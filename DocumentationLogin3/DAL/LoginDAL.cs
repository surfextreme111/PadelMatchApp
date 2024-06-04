using DocumentationLogin3.Modelos;
using DocumentationLogin3.Routes;
using Npgsql;

namespace DocumentationLogin3.DAL {
    public class LoginDAL {
        public async Task<string> HaceLogin(string usuario, string contraseña) {
            try {
                using (var connection = new NpgsqlConnection("Server=127.0.0.1;User ID=postgres;Password=dreuan12;Database=padeltfg;Port=5432;CommandTimeout=300;IncludeErrorDetail=true;")) {
                    await connection.OpenAsync();

                    var select = $"SELECT token FROM docu.users WHERE uname = @usuario AND pwd = @contraseña";

                    using (var command = new NpgsqlCommand(select, connection)) {
                        command.Parameters.AddWithValue("@usuario", usuario);
                        command.Parameters.AddWithValue("@contraseña", contraseña);

                        // Ejecutar la consulta y leer el resultado
                        var result = await command.ExecuteScalarAsync() as string;

                        // Si se encontró un token, devolverlo
                        if (result != null) {
                            return result;
                        } else {
                            // Si no se encontró un token, devolver un valor nulo
                            return null;
                        }
                    }
                }
            } catch (Exception ex) {
                return null;
            }
        }

        public async Task<bool> VerifyTokenDal(string token) {
            try {
                using (var connection = new NpgsqlConnection("Server=127.0.0.1;User ID=postgres;Password=dreuan12;Database=padeltfg;Port=5432;CommandTimeout=300;IncludeErrorDetail=true;")) {
                    await connection.OpenAsync();

                    var select = $"SELECT token FROM docu.users WHERE token = @token";

                    using (var command = new NpgsqlCommand(select, connection)) {
                        command.Parameters.AddWithValue("@token", token);

                        // Ejecutar la consulta y leer el resultado
                        var result = await command.ExecuteScalarAsync() as string;

                        // Si se encontró un token, devolverlo
                        if (result != null) {
                            return true;
                        } else {
                            // Si no se encontró un token, devolver un valor nulo
                            return false;
                        }
                    }
                }
            } catch (Exception ex) {
                return false;
            }
        }

        public async Task<string> InsertarCredenciales(string name, string pwd, string token) {
            try {
                var connectionString = "Server=127.0.0.1;User ID=postgres;Password=dreuan12;Database=padeltfg;Port=5432;CommandTimeout=300;IncludeErrorDetail=true;";
                var insertQuery = "INSERT INTO docu.users (uname, pwd, token) VALUES (@name, @pwd, @token)";

                using (var connection = new NpgsqlConnection(connectionString)) {
                    await connection.OpenAsync();

                    using (var command = new NpgsqlCommand(insertQuery, connection)) {
                        command.Parameters.AddWithValue("@name", name);
                        command.Parameters.AddWithValue("@pwd", pwd);
                        command.Parameters.AddWithValue("@token", token);

                        // Ejecutar la consulta de inserción
                        await command.ExecuteNonQueryAsync();
                    }
                }

                // Si la inserción fue exitosa, devolver un mensaje de éxito
                return "Credenciales insertadas correctamente.";
            } catch (Exception ex) {
                // Manejar cualquier excepción y lanzarla para ser manejada por el código que llama a este método
                throw new Exception("Error al insertar las credenciales.", ex);
            }
        }

        public async Task<List<Credenciales>> RecuperarUsuarios() {
            var listaUsuarios = new List<Credenciales>();

            try {
                using (var conn = new NpgsqlConnection("Server=127.0.0.1;User ID=postgres;Password=dreuan12;Database=padeltfg;Port=5432;CommandTimeout=300;IncludeErrorDetail=true;")) {
                    await conn.OpenAsync();
                    using (var cmd = new NpgsqlCommand($"SELECT id, uname, pwd, token FROM docu.users", conn)) {
                        using (var reader = await cmd.ExecuteReaderAsync()) {
                            while (reader.Read()) {
                                Credenciales datosUsuario = new Credenciales{
                                    id = reader.GetInt32(0),
                                    name = reader.GetString(1),
                                    pwd = reader.GetString(2),
                                    token = reader.GetString(3),
                                };
                                // Almacena los datos del usuario en la lista
                                listaUsuarios.Add(datosUsuario);
                            }
                        }
                    }
                }
            } catch (Exception ex) {
                throw new Exception($"Error al recuperar los usuarios {ex.Message}");
            }

            return listaUsuarios;
        }

        public async Task<bool> EliminarUsuarios(List<int> eliminarUsers) {
            //eliminar usuarios de la dbi
            try {
                //bucle que recorre la lista eliminarUsers
                foreach (var item in eliminarUsers) {
                    using (var conn = new NpgsqlConnection("Server=127.0.0.1;User ID=postgres;Password=dreuan12;Database=padeltfg;Port=5432;CommandTimeout=300;IncludeErrorDetail=true;")) {
                        await conn.OpenAsync();
                        using (var cmd = new NpgsqlCommand($"DELETE FROM docu.users WHERE id = @id", conn)) {
                            cmd.Parameters.AddWithValue("@id", item);
                            await cmd.ExecuteNonQueryAsync();
                        }
                    }
                }
                return true;

            } catch (Exception) {
                return false;
            }


        }
    }
}
