<%@ Page Language="C#" %>
<%@ Import Namespace="System.Net" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verificación de Token</title>
    <link rel="icon" href="favicon.jpg" type="image/x-icon">
   
</head>
<body>
<p> Andreu pal lobby<p/>
    <% 
    // Verificar si se ha establecido la cookie 'token'
    if (Request.Cookies["token"] != null) {
        string token = Request.Cookies["token"].Value;

        // Realizar una solicitud al API de tu sistema para verificar si el token es válido y obtener información del usuario
        string url = "http://docs.padelmatch.elitepadelformation.com/api/docu/VerifyToken";
        string json = token;

        try {
            using (var client = new WebClient()) {
                client.Headers[HttpRequestHeader.ContentType] = "application/json";
                string response = client.UploadString(url, "POST", json);

                // Decodificar la respuesta JSON
                var user_info = new System.Web.Script.Serialization.JavaScriptSerializer().Deserialize<dynamic>(response);

                // Verificar si el token es válido y si pertenece a uno de tus usuarios
                if (user_info != null) {
                    // El token es válido y pertenece a un usuario, redirigir al usuario a la página de documentación
					// Permanece en la web y ejecuta el codigo de aqui para abajo lol xd
                } else {
                    // El token no es válido o no pertenece a un usuario válido, redirigir al usuario al login.aspx
                    Response.Redirect("login.aspx");
                }
            }
        } catch (WebException ex) {
            // Manejar errores de la solicitud HTTP
            Response.Write("<p style='color: red;'>Error en la solicitud: " + ex.Message + "</p>");
        }
    } else {
        // La cookie 'token' no existe, redirigir al usuario al login.aspx
        Response.Redirect("login.aspx");
    }
    %>
</body>
</html>
