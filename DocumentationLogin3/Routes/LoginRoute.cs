using Microsoft.AspNetCore.Mvc;

namespace DocumentationLogin3.Routes {

    public class LoginRoute : BaseRoute {

        public LoginRoute(IConfiguration configuration) : base(configuration) {
        }

        public class CuerpoLogin {
            public string username { get; set; }
            public string password { get; set; }
        }

        [Produces("application/json")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        [HttpPost("LoginRequest")]
        public async Task<IActionResult> LoginRequest([FromBody] CuerpoLogin cuerpoLogin) {

            // Get username and password from the fucking body


            string username = cuerpoLogin.username;
            string password = cuerpoLogin.password;




            if (string.IsNullOrEmpty(username)) {
                return Unauthorized();
            }
            if (string.IsNullOrEmpty(password)) {
                return Unauthorized();
            }
            try {
                //utilizar dal hacelogin
                var apiDAL = new DAL.LoginDAL();
                var result = await apiDAL.HaceLogin(username, password);

                if (result != null) {
                    return Ok(result);
                } else {
                    return Unauthorized();
                }

            } catch (Exception ex) {
                Console.WriteLine("Error en LoginRequest");
                return StatusCode(500, ex.Message);
            }
        }

        [Produces("application/json")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        [HttpPost("VerifyToken")]
        public async Task<string> VerifyToken([FromBody] string token) {
            //comprobar string token no es null
            if (string.IsNullOrEmpty(token)) {
                return "false";
            }
            try {
                //utilizar dal hacelogin
                var apiDAL = new DAL.LoginDAL();
                var result = await apiDAL.VerifyTokenDal(token);

                if (result == true) {
                    return "true";
                } else {
                    return "false";
                }

            } catch (Exception) {

                throw;
            }
        }

    }



}
