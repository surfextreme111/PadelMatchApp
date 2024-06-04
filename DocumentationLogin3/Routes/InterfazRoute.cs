using DocumentationLogin3.Modelos;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace DocumentationLogin3.Routes {

    [Route("/InterfazDocu")]
    [ApiController]
    public class InterfazRoute : BaseRoute {

        public InterfazRoute(IConfiguration configuration) : base(configuration) {
        }

        [Produces("application/json")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        [HttpPost("RegistrarCredenciales")]
        public async Task<IActionResult> RegistrarCredenciales([FromBody] Credenciales modeloCredenciales) {
            try {
                var loginDAL = new DAL.LoginDAL();

                //comprobaciones de nulls
                if (modeloCredenciales.name == null) return BadRequest("nombre no puede ser null");
                if (modeloCredenciales.pwd == null) return BadRequest("contraseña no puede ser null");
                if (modeloCredenciales.token == null) return BadRequest("token no puede ser null");

                var funsiona = await loginDAL.InsertarCredenciales(modeloCredenciales.name, modeloCredenciales.pwd, modeloCredenciales.token);

                return Ok(funsiona);
            } catch (Exception ex) {
                return StatusCode(StatusCodes.Status500InternalServerError, new { Message = "Error interno del servidor", Details = ex.Message });
            }

        }

        //borrar usuario
        [Produces("application/json")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        [HttpDelete("EliminarUsuarios")]
        public async Task<IActionResult> EliminarUsuarios(List<int> listaEliminarUsers) {
            try {

                var loginDAL = new DAL.LoginDAL();

                var eliminarusers = await loginDAL.EliminarUsuarios(listaEliminarUsers);

                return Ok(eliminarusers);
            } catch (Exception ex) {
                return StatusCode(StatusCodes.Status500InternalServerError, new { Message = "Error interno del servidor", Details = ex.Message });
            }
        }


        [Produces("application/json")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        [HttpGet("RecuperarUsersDocs")]
        public async Task<IActionResult> RecuperarUsersDocs() {
            try {

                var loginDAL = new DAL.LoginDAL();

                var DATOSEMPRESAS = await loginDAL.RecuperarUsuarios();

                return Ok(DATOSEMPRESAS);
            } catch (Exception ex) {
                return StatusCode(StatusCodes.Status500InternalServerError, new { Message = "Error interno del servidor", Details = ex.Message });
            }
        }

    }
}
