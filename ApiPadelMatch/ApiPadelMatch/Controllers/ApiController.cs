using ApiPadelMatch.DAL;
using ApiPadelMatch.Modelos;
using Microsoft.AspNetCore.Mvc;
using System.Text.RegularExpressions;

namespace ApiPadelMatch.Controllers {
    [Route("[controller]/[action]")]
    [ApiController]
    public class ApiController : Controller {

        [HttpGet]
        public async Task<IActionResult> GetProvincias() {
             var apiDal = new DAL.DatosDAL();

            try {
                var provincias = await apiDal.GetProvincias();
                return Ok(provincias);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            } 
        }

        //---------------------------------------------------------------------------
        //-----------------------------------CLUBS-----------------------------------

        [HttpGet]
        public async Task<IActionResult> GetClubs() {
            var apiDal = new DAL.DatosDAL();

            try {
                var clubs = await apiDal.GetClubs();
                return Ok(clubs);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //Endpoint recuperar clubs favoritos de usuario
        [HttpPost]
        public async Task<IActionResult> GetClubsFav([FromHeader] int idUsuario) {
            var apiDal = new DAL.DatosDAL();
            try {
                var clubsFav = await apiDal.GetClubsFav(idUsuario);
                return Ok(clubsFav);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //getClubXId
        [HttpPost]
        public async Task<IActionResult> GetClubXId([FromHeader] int idClub) {
            var apiDal = new DAL.DatosDAL();
            try {
                var club = await apiDal.GetClubXId(idClub);
                return Ok(club);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //Endpoint addclubfav
        [HttpPost]
        public async Task<IActionResult> CambiarClubFav([FromHeader] int idUsuario, [FromHeader] int idClub) {
            var apiDal = new DAL.DatosDAL();
            try {
                var infoAddClubFav = await apiDal.CambiarClubFav(idUsuario, idClub);
                return Ok(infoAddClubFav);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //-----------------------------------CLUBS------------------------------------
        //----------------------------------------------------------------------------
        //-----------------------------------PISTAS-----------------------------------

        [HttpGet]
        public async Task<IActionResult> GetPistas() {
            var apiDal = new DAL.DatosDAL();

            try {
                var pistas = await apiDal.GetPistas();
                return Ok(pistas);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //CrearPista
        [HttpPost]
        public async Task<IActionResult> CrearPista([FromHeader] int idclub, [FromHeader] int tipopista, [FromHeader] int ubicacionpista, [FromHeader] string urlpista) {
            var apiDal = new DAL.DatosDAL();
            try {
                var infoCrearPista = await apiDal.CrearPista(idclub, tipopista, ubicacionpista, urlpista);
                return Ok(infoCrearPista);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
            
        }

        //BorrarPistaXID
        [HttpPost]
        public async Task<IActionResult> BorrarPistaXId([FromHeader] int idPista) {
            var apiDal = new DAL.DatosDAL();
            try {
                await apiDal.BorrarPistaXId(idPista);
                return Ok();
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //---------------------------------PISTAS-----------------------------------
        //--------------------------------------------------------------------------
        //---------------------------------USUS-------------------------------------

        //Endpoints EmailExistente
        [HttpPost]
        public async Task<bool> GetEmailExistente([FromHeader] string email) {
            var apiDal = new DAL.DatosDAL();
            var emailExistente = false;

            try {
                emailExistente = await apiDal.GetEmailExistente(email);
                return emailExistente;
            } catch (Exception ex) {
                return emailExistente;
            }
        }

        //Endpoints Logincorrecto
        [HttpPost]
        public async Task<bool> LoginCorrecto([FromHeader] string email,[FromHeader] string pwd) {
            var apiDal = new DAL.DatosDAL();
            var logincorrecto = false;

            try {
                logincorrecto = await apiDal.LoginCorrecto(email, pwd);
                return logincorrecto;
            } catch (Exception ex) {
                return logincorrecto;
            }
        }

        //Endpoint Obtener GetUsuarios
        [HttpGet]
        public async Task<IActionResult> GetUsuarios() {
            var apiDal = new DAL.DatosDAL();

            try {
                var usuarios = await apiDal.GetUsuarios();
                return Ok(usuarios);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //Endpoint ObtenerDatosUsuario
        [HttpPost]
        public async Task<IActionResult> ObtenerDatosUsuario([FromHeader] string email) {
            var apiDal = new DAL.DatosDAL();
            try {
                var datosUsuario = await apiDal.GetDatosUsuario(email);
                return Ok(datosUsuario);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //Endpoint crear usuario
        [HttpPost]
        public async Task<IActionResult> RegistrarUsuario([FromHeader] string email, [FromHeader] string pwd) {
            // Comprobaciones nulls
            if (email == null) {
                return BadRequest("El email no puede ser nulo");
            }
            if (pwd == null) {
                return BadRequest("La contraseña no puede ser nula");
            }

            // Validar el email
            string emailValidationResult = ValidateEmail(email);
            if (emailValidationResult != "El email es válido.") {
                return BadRequest(emailValidationResult);
            }

            var apiDal = new DAL.DatosDAL();
            try {
                var infoRegister = await apiDal.RegistrarUsuario(email, pwd);
                if (infoRegister.Equals("Email ya registrado")) {
                    return BadRequest("El email ya existe");
                }
                if (infoRegister.Equals("Registrado")) {
                    return Ok("Registro exitoso");
                }
                if (infoRegister.Equals("Error")) {
                    return BadRequest(infoRegister);
                }

                return Ok(infoRegister);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }
        // Función de validación de email
        static string ValidateEmail(string email) {
            if (string.IsNullOrWhiteSpace(email)) {
                return "El email no puede estar vacío.";
            }

            if (!Regex.IsMatch(email, @"^[^@]+@[^@]+\.[^@]+$")) {
                return "El email debe contener un '@' seguido de un dominio.";
            }

            if (!Regex.IsMatch(email, @"^[a-zA-Z0-9._%+-]+")) {
                return "El email contiene caracteres no permitidos antes del '@'.";
            }

            if (!Regex.IsMatch(email, @"@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")) {
                return "El dominio del email es incorrecto.";
            }

            return "El email es válido.";
        }

        //Endpoint recuperar usuario X ID
        [HttpPost]
        public async Task<IActionResult> GetUsuarioXId([FromHeader] int idUsuario) {
            var apiDal = new DAL.DatosDAL();
            try {
                var usuario = await apiDal.GetUsuarioXId(idUsuario);
                return Ok(usuario);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //ActualizarUsuario
        [HttpPut]
        public async Task<IActionResult> ActualizarUsuario([FromHeader] int idUsuario, [FromHeader] string username, [FromHeader] string pwd) {
            var apiDal = new DAL.DatosDAL();
            try {
                await apiDal.UpdateUsuario(idUsuario, username, pwd);
                return Ok();
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //getusuid con email

        [HttpPost]
        public async Task<IActionResult> GetUsuId([FromHeader] string email) {
            var apiDal = new DAL.DatosDAL();
            try {
                var idUsuario = await apiDal.GetUsuId(email);
                return Ok(idUsuario);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //-----------------------------------USUS---------------------------------------
        //------------------------------------------------------------------------------
        //-----------------------------------RESERVAS-----------------------------------
        [HttpPost]
        public async Task<IActionResult> PostReserva([FromHeader] int idpista, [FromHeader] DateTime horainicio, [FromHeader] int idclub, [FromHeader] int idpareja1, [FromHeader] int idpareja2, [FromHeader] int idusuarioreserva) {
            var apiDal = new DAL.DatosDAL();
            try {
                var infoReserva = await apiDal.PostReserva(idpista, horainicio, idclub, idpareja1, idpareja2, idusuarioreserva);
                if (infoReserva) {
                    return Ok("Reserva realizada");
                } else {
                    return BadRequest(infoReserva);
                }
            
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //Obtener horas reservadas para la fecha seleccionada de una pista
        [HttpPost]
        public async Task<IActionResult> GetHorasReservadas([FromHeader] string fecha, [FromHeader] int idPista) {
            var apiDal = new DAL.DatosDAL();
            //idpista = null badrequest
            if (idPista == null) {
                return BadRequest("El id de la pista no puede ser nulo");
            }

            try {
                var horasReservadas = await apiDal.GetHorasReservadas(fecha, idPista);
                return Ok(horasReservadas);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //recuperar reservas de un usuario
        [HttpPost]
        public async Task<IActionResult> GetReservasUsuario([FromHeader] int idUsuario) {
            var apiDal = new DAL.DatosDAL();
            try {
                var reservasUsuario = await apiDal.GetReservasUsuario(idUsuario);
                //if reservasUsuario == [] || reservasusuario.count =0 return null
                if(reservasUsuario == null) {
                    return Ok("");
                }

                return Ok(reservasUsuario);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //ActualizarReserva
        [HttpPut]
        public async Task<IActionResult> ActualizarReserva([FromHeader] int idReserva, [FromHeader] DateTime horainicio, [FromHeader] DateTime horafin, [FromHeader] int idpareja2) {
            var apiDal = new DAL.DatosDAL();
            try {
                await apiDal.UpdateReserva(idReserva, horainicio, horafin, idpareja2);
                return Ok();
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
            
        }

        //recuperar reservas
        [HttpGet]
        public async Task<IActionResult> GetReservasProximas() {
            var apiDal = new DAL.DatosDAL();
            try {
                var reservas = await apiDal.GetReservasProximas();
                return Ok(reservas);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //BorrarReservaXID
        [HttpPost]
        public async Task<IActionResult> BorrarReservaXId([FromHeader] int idReserva) {
            var apiDal = new DAL.DatosDAL();
            try {
                await apiDal.BorrarReservaXId(idReserva);
                return Ok(true);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }


        //-----------------------------------RESERVAS-----------------------------------
        //------------------------------------------------------------------------------
        //-----------------------------------PAREJA------------------------------------

        //Endpoint recuperar pareja X ID
        [HttpPost]
        public async Task<IActionResult> GetParejaXId([FromHeader] int idPareja) {
            var apiDal = new DAL.DatosDAL();
            try {
                var pareja = await apiDal.GetParejaXId(idPareja);
                return Ok(pareja);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //Endpoint conceder admin a usuario
        [HttpPost]
        public async Task<IActionResult> ConcederAdmin([FromHeader] int idUsuario) {
            var apiDal = new DAL.DatosDAL();
            try {
                await apiDal.ConcederAdmin(idUsuario);
                return Ok();
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

        //Endpoint obtener Clubs de un idusuariocreador
        [HttpPost]
        public async Task<IActionResult> GetClubsCreador([FromHeader] int idUsuarioCreador) {
            var apiDal = new DAL.DatosDAL();
            try {
                var clubsCreador = await apiDal.GetClubsCreador(idUsuarioCreador);
                return Ok(clubsCreador);
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }

    }
}
