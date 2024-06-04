using ApiPadelMatch.Modelos;
using ApiPadelMatch.Utils;
using Npgsql;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace ApiPadelMatch.DAL {
    public class DatosDAL : BaseDAL {
        public async Task<List<Provincia>> GetProvincias() {
            //obtener provincias de la base de datos con una conexion
            List<Provincia> Listprovincias = new List<Provincia>();
            try {
                // Cadena de conexión a la base de datos PostgreSQL
                //string connectionString = "Host=127.0.0.1;Port=5432;Database=padeltfg;Username=postgres;Password=dreuan12;";
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {

                    // Consulta SQL para obtener las provincias
                    string query = "SELECT idprovincia,nombre FROM app.provincia";

                // Crear una conexión con la base de datos
                //using (NpgsqlConnection connection = new NpgsqlConnection(connectionString)) {
                    // Abrir la conexión
                    connection.Open();

                    // Crear un comando para ejecutar la consulta SQL
                    using (NpgsqlCommand command = new NpgsqlCommand(query, connection)) {
                        // Ejecutar la consulta y obtener un lector de datos
                        using (NpgsqlDataReader reader = command.ExecuteReader()) {
                            // Iterar a través de las filas del resultado
                            while (reader.Read()) {
                                // Obtener el valor de la columna "nombre" de cada fila
                                int idProvincia = reader.GetInt32(0);
                                string nombreProvincia = reader.GetString(1);

                                // Imprimir el nombre de la provincia
                                Console.WriteLine(nombreProvincia);

                                // Crear un objeto Provincia con el nombre obtenido
                                Provincia provincia = new Provincia {
                                    idprovincia = idProvincia,
                                    nombre = nombreProvincia
                                };
                                //añadir la provincia a la lista de provincias
                                Listprovincias.Add(provincia);
                            }
                        }
                    }
                }
            
                return Listprovincias;
                
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al obtener las provincias: error = {ex.Message}", "GetProvincias", 0);
                throw ex;
            }
        }

        public async Task<List<Club>> GetClubs() {//pasar por params el dia y la hora
            //obtener clubs de la base de datos con una conexion
            List<Club> Listclubs= new List<Club>();
            try {
                // Cadena de conexión a la base de datos PostgreSQL
                //string connectionString = "Host=127.0.0.1;Port=5432;Database=padeltfg;Username=postgres;Password=dreuan12;";
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    // Consulta SQL para obtener las provincias
                    string query = "SELECT idclub,nombre,descripcion,idusuariocreador,fechain,imagen,idprovincia,coordenadas FROM app.club";

                // Crear una conexión con la base de datos
                //using (NpgsqlConnection connection = new NpgsqlConnection(connectionString)) {
                    // Abrir la conexión
                    connection.Open();

                    // Crear un comando para ejecutar la consulta SQL
                    using (NpgsqlCommand command = new NpgsqlCommand(query, connection)) {
                        // Ejecutar la consulta y obtener un lector de datos
                        using (NpgsqlDataReader reader = command.ExecuteReader()) {
                            // Iterar a través de las filas del resultado
                            while (reader.Read()) {
                                // Obtener el valor de la columna "nombre" de cada fila
                                int idClub = reader.GetInt32(0);
                                string nombreClub= reader.GetString(1);

                                // Crear un objeto Club con el nombre obtenido

                                Club club = new Club {
                                    idclub = idClub,
                                    nombre = nombreClub,
                                    descripcion = reader.GetString(2),
                                    idusuariocreador = reader.GetInt32(3),
                                    fechain = reader.GetDateTime(4), //controlar este null
                                    imagen = reader.GetString(5),
                                    idprovincia = reader.GetInt32(6),
                                    coordenadas = reader.GetString(7)

                                };
                                //añadir la provincia a la lista de provincias
                                Listclubs.Add(club);
                            }
                        }
                    }
                }
                return Listclubs;
            } catch (Exception ex) {
                throw ex;
            }
        }

        public async Task<List<Pista>> GetPistas() {
            //obtener Pistas de la base de datos con una conexion
            List<Pista> Listpistas= new List<Pista>();
            try {
                // Cadena de conexión a la base de datos PostgreSQL
                //string connectionString = "Host=127.0.0.1;Port=5432;Database=padeltfg;Username=postgres;Password=dreuan12;";
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    // Consulta SQL para obtener las provincias
                    string query = "select idpista,idclub,tipopista,ubicacionpista,urlimagenes from app.pista";

                // Crear una conexión con la base de datos
                //using (NpgsqlConnection connection = new NpgsqlConnection(connectionString)) {
                    // Abrir la conexión
                    connection.Open();

                    // Crear un comando para ejecutar la consulta SQL
                    using (NpgsqlCommand command = new NpgsqlCommand(query, connection)) {
                        // Ejecutar la consulta y obtener un lector de datos
                        using (NpgsqlDataReader reader = command.ExecuteReader()) {
                            // Iterar a través de las filas del resultado
                            while (reader.Read()) {
                                // Obtener el valor de la columna "nombre" de cada fila
                                int idPista = reader.GetInt32(0);
                                int idClub = reader.GetInt32(1);

                                // Crear un objeto pista con el nombre obtenido

                                Pista pista = new Pista {
                                    idpista = idPista,
                                    idclub = idClub,
                                    tipopista = reader.GetInt32(2),
                                    ubicacionpista = reader.GetInt32(3),
                                    urlimagenes = reader.GetString(4)

                                };
                                //añadir la provincia a la lista de provincias
                                Listpistas.Add(pista);

                            }
                        }
                    }
                }

                return Listpistas;

            } catch (Exception ex) {
                throw ex;
            }
        }

        public async Task<bool> GetEmailExistente(string email) {
            try {
                var existe = false;
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = $"SELECT 1 FROM app.usuario WHERE email ILIKE @Email";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@Email", email);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            existe = await reader.ReadAsync();
                        }
                    }
                }
                return existe;

            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"error al buscar el mail: error = {ex.Message}", "GetEmailExistente", 0);
                return false;
            }
        }

        public async Task<List<Usuario>> GetUsuarios() {
            //obtener clubs de la base de datos con una conexion
            List<Usuario> ListUsuarios = new List<Usuario>();
            try {
                // Cadena de conexión a la base de datos PostgreSQL
                //string connectionString = "Host=127.0.0.1;Port=5432;Database=padeltfg;Username=postgres;Password=dreuan12;";
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {

                    // Consulta SQL para obtener las provincias
                    string query = "SELECT idusuario,username,password,email,nivel,foto,victorias,derrotas,idrol FROM app.usuario";

                // Crear una conexión con la base de datos
                //using (NpgsqlConnection connection = new NpgsqlConnection(connectionString)) {
                    // Abrir la conexión
                    connection.Open();

                    // Crear un comando para ejecutar la consulta SQL
                    using (NpgsqlCommand command = new NpgsqlCommand(query, connection)) {
                        // Ejecutar la consulta y obtener un lector de datos
                        using (NpgsqlDataReader reader = command.ExecuteReader()) {
                            // Iterar a través de las filas del resultado
                            while (reader.Read()) {
                                // Obtener el valor de la columna "nombre" de cada fila
                                int idUsuario = reader.GetInt32(0);
                                string username = reader.GetString(1);
                                

                                // Crear un objeto Usuario con el nombre obtenido

                                Usuario usuario = new Usuario {
                                    idusuario = idUsuario,
                                    username = username,
                                    password = reader.GetString(2),
                                    email = reader.GetString(3),
                                    nivel = reader.GetInt32(4),
                                    foto = reader.GetString(5),
                                    victorias = reader.GetInt32(6),
                                    derrotas = reader.GetInt32(7),
                                    idrol = reader.GetInt32(8),
                                };
                                //añadir la provincia a la lista de provincias
                                ListUsuarios.Add(usuario);
                            }
                        }
                    }
                }

                return ListUsuarios;

            } catch (Exception ex) {
                throw new Exception($"Error {ex.Message}");
            }
        }

        public async Task<bool> LoginCorrecto(string email, string pwd) {
            try {
                var existe = false;
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT COUNT(*) FROM app.usuario WHERE email = @Email AND password = @Pwd";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Pwd", pwd);
                        var count = (long)await command.ExecuteScalarAsync();  // Usa ExecuteScalarAsync para obtener el valor de COUNT(*)
                        existe = count > 0;
                    }
                }
                return existe;

            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"error al buscar el mail: error = {ex.Message}", "GetPasswordCorrecta", 0);
                return false;
            }
        }

        public async Task<string> RegistrarUsuario(string email, string pwd) {
            try {
                //Tareas
                //1. Comprobar si el email ya existe
                //2. Si no existe, insertar datos y devolver insertado
                //3. Si existe, devolver Este email ya esta registrado
                var existe = await GetEmailExistente(email);
                if (existe) {
                    return "Email ya registrado";
                } else {
                    //obtener los carácteres de antes del @ para el username
                    var username = email.Split('@')[0];

                    using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                        var query = "INSERT INTO app.usuario (username, email, password) VALUES (@Username,@Email, @Pwd)";
                        await connection.OpenAsync();
                        using (var command = new NpgsqlCommand(query, connection)) {
                            command.Parameters.AddWithValue("@Username", username);
                            command.Parameters.AddWithValue("@Email", email);
                            command.Parameters.AddWithValue("@Pwd", pwd);
                            await command.ExecuteNonQueryAsync();
                        }
                    }
                    return "Registrado";
                }
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"error al registrar el usuario: error = {ex.Message}", "RegistrarUsuario", 0);
                return $"{ex.Message}";
            }
        }

        public async Task<Usuario> GetDatosUsuario(string email) {
            try {//tener en cuenta los posibles nulls
                Usuario usuario = new Usuario();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idusuario,username,email,nivel,foto,victorias,derrotas,idrol FROM app.usuario WHERE email = @Email";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@Email", email);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            if (await reader.ReadAsync()) {
                                usuario.idusuario = reader.GetInt32(0);
                                usuario.username = reader.GetString(1);
                                usuario.email = reader.GetString(2);
                                usuario.nivel = reader.GetInt32(3);
                                usuario.foto = reader.IsDBNull(4) ? "" : reader.GetString(4);
                                usuario.victorias = reader.GetInt32(5);
                                usuario.derrotas = reader.GetInt32(6);
                                usuario.idrol = reader.GetInt32(7);
                            }
                        }
                    }
                }
                return usuario;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"error al obtener los datos del usuario: error = {ex.Message}", "GetDatosUsuario", 0);
                return null;
            }
        }

        public async Task<List<string>> GetHorasReservadas(string fecha, int idPista) {
            try {
                // Parsear la fecha string a DateTimeOffset para manejar la zona horaria
                DateTimeOffset fechaOffset = DateTimeOffset.Parse(fecha);
                DateTime fecha2 = fechaOffset.Date;  // Obtener solo la parte de la fecha

                List<string> horasReservadas = new List<string>();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT horainicio FROM app.reserva WHERE horainicio::date = @Fecha AND idpista = @IdPista ORDER BY horainicio";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@Fecha", fecha2);
                        command.Parameters.AddWithValue("@IdPista", idPista);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            List<DateTime> horas = new List<DateTime>();
                            while (await reader.ReadAsync()) {
                                DateTime horaInicio = reader.GetDateTime(0);
                                horas.Add(horaInicio);
                                horasReservadas.Add(horaInicio.ToString("HH:mm"));
                                horasReservadas.Add(horaInicio.AddMinutes(30).ToString("HH:mm"));
                            }

                            // Verificar y rellenar huecos de 30 minutos si no hay una hora completa disponible
                            for (int i = 0; i < horas.Count - 1; i++) {
                                DateTime currentEndTime = horas[i].AddHours(1);
                                DateTime nextStartTime = horas[i + 1];

                                // Verificar si hay un hueco entre currentEndTime y nextStartTime
                                if (nextStartTime > currentEndTime) {
                                    DateTime nextTimeSlot = currentEndTime;
                                    // Rellenar huecos de 30 minutos, pero solo si no hay una hora completa disponible
                                    while (nextTimeSlot < nextStartTime) {
                                        if ((nextStartTime - nextTimeSlot).TotalMinutes < 60) {//si diferencia entre la siguiente hora y la siguiente hora es menor a 60 minutos
                                            if (!horasReservadas.Contains(nextTimeSlot.ToString("HH:mm"))) {//si no horasreservadas no contiene la hora
                                                horasReservadas.Add(nextTimeSlot.ToString("HH:mm"));//añadir la hora
                                            }
                                        }
                                        nextTimeSlot = nextTimeSlot.AddMinutes(30);
                                    }
                                }
                            }
                        }
                    }
                }
                return horasReservadas.Distinct().OrderBy(h => h).ToList();
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"error al obtener las horas reservadas: error = {ex.Message}", "GetHorasReservadas", 0);
                return null;
            }
        }

        public async Task<bool> CambiarClubFav(int idUsuario, int idClub) {
            //Tareas
            //1. comprbar si el usuario tiene ese idclub como favorito
            //2. Si no lo tiene, insertar el idclub en la tabla clubfav
            //3. Si lo tiene, borrar el idclub de la tabla clubfav

            try {
                var existe = false;
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT COUNT(*) FROM app.clubfav WHERE idusuario = @IdUsuario AND idclub = @IdClub";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdUsuario", idUsuario);
                        command.Parameters.AddWithValue("@IdClub", idClub);
                        var count = (long)await command.ExecuteScalarAsync();  // Usa ExecuteScalarAsync para obtener el valor de COUNT(*)
                        existe = count > 0;
                    }
                }

                if (existe) {
                    using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                        var query = "DELETE FROM app.clubfav WHERE idusuario = @IdUsuario AND idclub = @IdClub";
                        await connection.OpenAsync();
                        using (var command = new NpgsqlCommand(query, connection)) {
                            command.Parameters.AddWithValue("@IdUsuario", idUsuario);
                            command.Parameters.AddWithValue("@IdClub", idClub);
                            await command.ExecuteNonQueryAsync();
                        }
                    }
                } else {
                    using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                        var query = "INSERT INTO app.clubfav (idusuario, idclub) VALUES (@IdUsuario, @IdClub)";
                        await connection.OpenAsync();
                        using (var command = new NpgsqlCommand(query, connection)) {
                            command.Parameters.AddWithValue("@IdUsuario", idUsuario);
                            command.Parameters.AddWithValue("@IdClub", idClub);
                            await command.ExecuteNonQueryAsync();
                        }
                    }
                }
                return true;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"error al cambiar el club favorito: error = {ex.Message}", "CambiarClubFav", 0);
                return false;
            }


        }

        public async Task<List<Club>> GetClubsFav(int idUsuario) {
            try {
                List<Club> clubsFav = new List<Club>();
                //Tareas
                //1. Obtener de la tabla clubfav los clubs favoritos del usuario
                //2. Obtener los datos de los clubs favoritos
                //3. Devolver la lista de clubs favs

                //1. Obtener de la tabla clubfav los clubs favoritos del usuario
                List<int> idClubsFav = new List<int>();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idclub FROM app.clubfav WHERE idusuario = @IdUsuario";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdUsuario", idUsuario);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            while (await reader.ReadAsync()) {
                                idClubsFav.Add(reader.GetInt32(0));
                            }
                        }
                    }
                }

                //2. Obtener los datos de los clubs favoritos
                foreach (var idClub in idClubsFav) {
                    using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                        var query = "SELECT idclub,nombre,descripcion,idusuariocreador,fechain,imagen,idprovincia,coordenadas FROM app.club WHERE idclub = @IdClub";
                        await connection.OpenAsync();
                        using (var command = new NpgsqlCommand(query, connection)) {
                            command.Parameters.AddWithValue("@IdClub", idClub);
                            using (var reader = await command.ExecuteReaderAsync()) {
                                if (await reader.ReadAsync()) {
                                    Club club = new Club {
                                        idclub = reader.GetInt32(0),
                                        nombre = reader.GetString(1),
                                        descripcion = reader.GetString(2),
                                        idusuariocreador = reader.GetInt32(3),
                                        fechain = reader.GetDateTime(4), //controlar este null
                                        imagen = reader.GetString(5),
                                        idprovincia = reader.GetInt32(6),
                                        coordenadas = reader.GetString(7)
                                    };
                                    clubsFav.Add(club);
                                }
                            }
                        }
                    }
                }

                return clubsFav;

            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"error al obtener los clubs favoritos: error = {ex.Message}", "GetClubsFav", 0);
                return null;
            }

        }

        public async Task<List<Reserva>> GetReservasUsuario(int idusuarioreserva) {
            try {
                List<Reserva> reservasUsuario = new List<Reserva>();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idreserva, idpista, horainicio, horafin, codigoinvitacion, idclub, idpareja1, idpareja2, idusuarioreserva FROM app.reserva WHERE idusuarioreserva = @idusuarioreserva";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@idusuarioreserva", idusuarioreserva);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            while (await reader.ReadAsync()) {
                                Reserva reserva = new Reserva {
                                    idreserva = reader.IsDBNull(0) ? 0 : reader.GetInt32(0),
                                    idpista = reader.IsDBNull(1) ? 0 : reader.GetInt32(1),
                                    horainicio = reader.IsDBNull(2) ? DateTime.MinValue : reader.GetDateTime(2),
                                    horafin = reader.IsDBNull(3) ? DateTime.MinValue : reader.GetDateTime(3),
                                    codigoinvitacion = reader.IsDBNull(4) ? 0 : reader.GetInt32(4),
                                    idclub = reader.IsDBNull(5) ? 0 : reader.GetInt32(5),
                                    idpareja1 = reader.IsDBNull(6) ? 0 : reader.GetInt32(6),
                                    idpareja2 = reader.IsDBNull(7) ? 0 : reader.GetInt32(7),
                                    idusuarioreserva = reader.IsDBNull(8) ? 0 : reader.GetInt32(8)
                                };
                                reservasUsuario.Add(reserva);
                            }
                        }
                    }
                }
                return reservasUsuario;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al obtener las reservas del usuario: error = {ex.Message}", "GetReservasUsuario", 0);
                return null;
            }
        }

        public async Task<Club> GetClubXId(int idClub) {
            try {
                Club club = new Club();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idclub,nombre,descripcion,idusuariocreador,fechain,imagen,idprovincia,coordenadas FROM app.club WHERE idclub = @IdClub";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdClub", idClub);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            if (await reader.ReadAsync()) {
                                club.idclub = reader.GetInt32(0);
                                club.nombre = reader.GetString(1);
                                club.descripcion = reader.GetString(2);
                                club.idusuariocreador = reader.GetInt32(3);
                                club.fechain = reader.GetDateTime(4); //controlar este null
                                club.imagen = reader.GetString(5);
                                club.idprovincia = reader.GetInt32(6);
                                club.coordenadas = reader.GetString(7);
                            }
                        }
                    }
                }
                return club;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al obtener los datos del club: error = {ex.Message}", "GetClubXId", 0);
                return null;
            }
        }

        public async Task<Usuario> GetUsuarioXId(int idUsuario) {
            try {
                Usuario usuario = new Usuario();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idusuario,username,email,nivel,foto,victorias,derrotas,idrol FROM app.usuario WHERE idusuario = @IdUsuario";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdUsuario", idUsuario);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            if (await reader.ReadAsync()) {
                                usuario.idusuario = reader.GetInt32(0);
                                usuario.username = reader.GetString(1);
                                usuario.email = reader.GetString(2);
                                usuario.nivel = reader.GetInt32(3);
                                usuario.foto = reader.IsDBNull(4) ? "" : reader.GetString(4);
                                usuario.victorias = reader.GetInt32(5);
                                usuario.derrotas = reader.GetInt32(6);
                                usuario.idrol = reader.GetInt32(7);
                            }
                        }
                    }
                }
                return usuario;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al obtener los datos del usuario: error = {ex.Message}", "GetUsuarioXId", 0);
                return null;
            }

        }

        public async Task<List<Reserva>> GetReservasProximas() {
            //obtener la hora actual y solo mostrar reservas con fecha inicio posterior a la actual
            try {
                List<Reserva> reservas = new List<Reserva>();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idreserva, idpista, horainicio, horafin, codigoinvitacion, idclub, idpareja1, idpareja2, idusuarioreserva FROM app.reserva WHERE horainicio > now()";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        using (var reader = await command.ExecuteReaderAsync()) {
                            while (await reader.ReadAsync()) {
                                Reserva reserva = new Reserva {
                                    idreserva = reader.IsDBNull(0) ? 0 : reader.GetInt32(0),
                                    idpista = reader.IsDBNull(1) ? 0 : reader.GetInt32(1),
                                    horainicio = reader.IsDBNull(2) ? DateTime.MinValue : reader.GetDateTime(2),
                                    horafin = reader.IsDBNull(3) ? DateTime.MinValue : reader.GetDateTime(3),
                                    codigoinvitacion = reader.IsDBNull(4) ? 0 : reader.GetInt32(4),
                                    idclub = reader.IsDBNull(5) ? 0 : reader.GetInt32(5),
                                    idpareja1 = reader.IsDBNull(6) ? 0 : reader.GetInt32(6),
                                    idpareja2 = reader.IsDBNull(7) ? 0 : reader.GetInt32(7),
                                    idusuarioreserva = reader.IsDBNull(8) ? 0 : reader.GetInt32(8)
                                };
                                reservas.Add(reserva);
                            }
                        }
                    }
                }
                return reservas;
                
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al obtener las reservas próximas: error = {ex.Message}", "GetReservasProximas", 0);
                return null;
            }

        }

        public async Task<Pareja> GetParejaXId(int idPareja) {
            try {
                Pareja pareja = new Pareja();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idpareja,idusuario1,idusuario2 FROM app.pareja WHERE idpareja = @IdPareja";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdPareja", idPareja);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            if (await reader.ReadAsync()) {
                                pareja.IdPareja = reader.GetInt32(0);
                                pareja.IdUsuario1= reader.GetInt32(1);
                                pareja.IdUsuario2 = reader.GetInt32(2);
                            }
                        }
                    }
                }
                return pareja;
               
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al obtener los datos de la pareja: error = {ex.Message}", "GetParejaXId", 0);
                return null;
            }   
            
        }

        public async Task UpdateUsuario(int idUsuario, string username, string pwd) {
            try {
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "UPDATE app.usuario SET username = @Username, password = @Pwd WHERE idusuario = @IdUsuario";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@Pwd", pwd);
                        command.Parameters.AddWithValue("@IdUsuario", idUsuario);
                        await command.ExecuteNonQueryAsync();
                    }
                }
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al actualizar los datos del usuario: error = {ex.Message}", "UpdateUsuario", 0);
            }

        }

        public async Task<bool> PostReserva(int idpista, DateTime horainicio, int idclub, int idpareja1, int idpareja2, int idusuarioreserva) {
            try {
                // Convertir horainicio a UTC
                var horainicioUtc = horainicio.ToUniversalTime().AddHours(-2);//se añade por la cara en servidor con 2h más ...
                // Obtener la hora fin sumando 1 hora a horainicioUtc
                var horafinUtc = horainicioUtc.AddHours(1);

                // generar código de invitación número random integer de 9 dígitos
                Random random = new Random();
                int codigoInvitacion = random.Next(100000000, 999999999);

                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = @"INSERT INTO app.reserva (idreserva, idpista, horainicio, horafin, codigoinvitacion, permitecancelacion, idclub, idpareja1, idpareja2, idusuarioreserva)
                    VALUES (default, @idpista, @Horainicio, @Horafin, @Codigoinvitacion, default, @IdClub, @IdPareja1, @IdPareja2, @IdUsuarioReserva)";

                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@idpista", idpista);
                        command.Parameters.AddWithValue("@Horainicio", horainicioUtc);
                        command.Parameters.AddWithValue("@Horafin", horafinUtc);
                        command.Parameters.AddWithValue("@Codigoinvitacion", codigoInvitacion);
                        command.Parameters.AddWithValue("@IdClub", idclub);
                        //command.Parameters.AddWithValue("@IdPareja1", idpareja1);

                        if (idpareja1 == 0) {
                            command.Parameters.AddWithValue("@IdPareja1", DBNull.Value);
                        } else {
                            command.Parameters.AddWithValue("@IdPareja1", idpareja1);
                        }

                        if (idpareja2 == 0) {
                            command.Parameters.AddWithValue("@IdPareja2", DBNull.Value);
                        } else {
                            command.Parameters.AddWithValue("@IdPareja2", idpareja2);
                        }

                        command.Parameters.AddWithValue("@IdUsuarioReserva", idusuarioreserva);
                        await command.ExecuteNonQueryAsync();
                    }
                }
                return true;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al insertar la reserva: error = {ex.Message}", "PostReserva", 0);
                return false;
            }
        }

        public async Task<bool> CrearPista(int idclub, int tipopista, int ubicacionpista, string urlpista) {
            try {
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "INSERT INTO app.pista (idpista, idclub, tipopista, ubicacionpista, urlimagenes) VALUES (default, @IdClub, @Tipopista, @Ubicacionpista, @Urlimagenes)";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdClub", idclub);
                        command.Parameters.AddWithValue("@Tipopista", tipopista);
                        command.Parameters.AddWithValue("@Ubicacionpista", ubicacionpista);
                        command.Parameters.AddWithValue("@Urlimagenes", urlpista);
                        await command.ExecuteNonQueryAsync();
                    }
                }
                return true;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al insertar la pista: error = {ex.Message}", "CrearPista", 0);
                return false;
            }
            

        }

        public async Task<bool> BorrarPistaXId(int idPista) {
            try {
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "DELETE FROM app.pista WHERE idpista = @IdPista";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdPista", idPista);
                        await command.ExecuteNonQueryAsync();
                    }
                }
                return true;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al borrar la pista: error = {ex.Message}", "BorrarPistaXId", 0);
                return false;
            }

        }

        public async Task<bool> UpdateReserva(int idReserva, DateTime horainicio, DateTime horafin, int idpareja2) {
            try {
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "UPDATE app.reserva SET horainicio = @Horainicio, horafin = @Horafin, idpareja2 = @IdPareja2 WHERE idreserva = @IdReserva";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@Horainicio", horainicio);
                        command.Parameters.AddWithValue("@Horafin", horafin);
                        command.Parameters.AddWithValue("@IdPareja2", idpareja2);
                        command.Parameters.AddWithValue("@IdReserva", idReserva);
                        await command.ExecuteNonQueryAsync();
                    }
                }
                return true;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al actualizar la reserva: error = {ex.Message}", "UpdateReserva", 0);
                return false;
            }

        }

        public async Task<int> GetUsuId(string email) {
            try {
                int idUsuario = 0;
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idusuario FROM app.usuario WHERE email = @Email";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@Email", email);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            if (await reader.ReadAsync()) {
                                idUsuario = reader.GetInt32(0);
                            }
                        }
                    }
                }
                return idUsuario;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al obtener el id del usuario: error = {ex.Message}", "GetUsuId", 0);
                return 0;
            }

        }

        public async Task<bool> BorrarReservaXId(int idReserva) {
            try {
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "DELETE FROM app.reserva WHERE idreserva = @IdReserva";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdReserva", idReserva);
                        await command.ExecuteNonQueryAsync();
                    }
                }
                return true;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al borrar la reserva: error = {ex.Message}", "BorrarReservaXId", 0);
                return false;
            }
        }

        public async Task<bool> ConcederAdmin(int idUsuario) {
            try {
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "UPDATE app.usuario SET idrol = 3 WHERE idusuario = @IdUsuario";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdUsuario", idUsuario);
                        await command.ExecuteNonQueryAsync();
                    }
                }
                return true;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al conceder el rol de admin: error = {ex.Message}", "ConcederAdmin", 0);
                return false;
            }
        }

        public async Task<List<int>> GetClubsCreador(int idUsuarioCreador) {
            try {
                List<int> clubsCreador = new List<int>();
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("tfgBD"))) {
                    var query = "SELECT idclub FROM app.club WHERE idusuariocreador = @IdUsuarioCreador";
                    await connection.OpenAsync();
                    using (var command = new NpgsqlCommand(query, connection)) {
                        command.Parameters.AddWithValue("@IdUsuarioCreador", idUsuarioCreador);
                        using (var reader = await command.ExecuteReaderAsync()) {
                            while (await reader.ReadAsync()) {
                                clubsCreador.Add(reader.GetInt32(0));
                            }
                        }
                    }
                }
                return clubsCreador;
            } catch (Exception ex) {
                BaseDAL.InsertarLogs(TipoLog.ERROR, $"Error al obtener los clubs creados por el usuario: error = {ex.Message}", "GetClubsCreador", 0);
                return null;
            }

        }
    }
}
             
        
    

