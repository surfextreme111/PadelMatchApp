internal class Program {
    private static void Main(string[] args) {
        string carpetaSite = @"C:\githubtfg\23_24_DAM_ANDREU_BUSTOS_AZNAR_PISTAS_PADEL\TFG-Documentacion\site";

        PasarPorCarpeta(carpetaSite);
        //                        string url = ""http://127.0.0.1:49993/api/docu/VerifyToken"";
        Console.WriteLine("Proceso completado. Se han agregado las líneas aspx a los archivos HTML y se han cambiado las extensiones a '.aspx' en la carpeta 'site'.");
    }

    private static void PasarPorCarpeta(string carpetaSite) {
        // Recorrer todos los archivos HTML en la carpeta site y subcarpetas
        foreach (string archivoHtml in Directory.EnumerateFiles(carpetaSite, "*.html", SearchOption.AllDirectories)) 

            // Write the HTML file
            WriteHtml(archivoHtml);

        

        // Pasar por las otras sub carpetas
        foreach (string carpeta in Directory.EnumerateDirectories(carpetaSite)) 
            PasarPorCarpeta(carpeta);
        
        
    }

    // Función que a un archivo le escribe html
    public static void WriteHtml(string archivoHtml) {
        // Leer el contenido del archivo HTML
        string contenido = File.ReadAllText(archivoHtml);

        // Verificar si el archivo ya tiene las líneas PHP agregadas
        if (!contenido.Contains("LoginFunctionPHP")) {

            //si contenido2 no contiene <%@ Page Language=""C#"" ContentType=""text/html; charset=utf-8"" %>
            if (!contenido.Contains("<%@ Page Language=\"\"C#\"\" ContentType=\"\"text/html; charset=utf-8\"\" %>")) {

                // Agregar las líneas aspx necesarias para el login justo antes del </body>
                contenido = contenido.Replace("<!doctype html>", @"
<%@ Page Language=""C#"" ContentType=""text/html; charset=utf-8"" %>
<%@ Import Namespace=""System.Net"" %>

<!DOCTYPE html>    
                ");
                File.WriteAllText(archivoHtml, contenido);
            }

            contenido = File.ReadAllText(archivoHtml); //volvemos a leer todo el texto despues de la primera mod


            contenido = contenido.Replace(" </body>", @"
                    <% 
                    // LoginFunctionPHP
                    // Verificar si se ha establecido la cookie 'token'
                    if (Request.Cookies[""token""] != null) {
                        string token = Request.Cookies[""token""].Value;

                        //la cookie si tiene el value de el token asignado

                        // Realizar una solicitud al API de tu sistema para verificar si el token es válido y obtener información del usuario
                        string url = ""http://127.0.0.1:49993/api/docu/VerifyToken"";
                        string json = token;

                        try {
                            using (var client = new WebClient()) {
                                client.Headers[HttpRequestHeader.ContentType] = ""application/json"";
                                string response = client.UploadString(url, ""POST"", json);

                                // Decodificar la respuesta JSON
                                var user_info = new System.Web.Script.Serialization.JavaScriptSerializer().Deserialize<dynamic>(response);

                                // Verificar si el token es válido y si pertenece a uno de tus usuarios
                                if (user_info.Contains(""true"")) {
                                    // El token es válido y pertenece a un usuario, redirigir al usuario a la página de documentación
					                // Permanece en la web y ejecuta el codigo de aqui para abajo lol xd
                                    //el userinfo tiene el token

                                } else {
                                    // El token no es válido o no pertenece a un usuario válido, redirigir al usuario al login.aspx
                                    Response.Redirect(""/login.aspx"");
                                }
                            }
                        } catch (WebException ex) {
                            // Manejar errores de la solicitud HTTP
                            Response.Write(""<p style='color: red;'>Error en la solicitud: "" + ex.Message + ""</p>"");
                        }
                    } else {
                        // La cookie 'token' no existe, redirigir al usuario al login.aspx
                        Response.Redirect(""/login.aspx"");
                    }
                    %>
                </body>");

            // Sobrescribir el archivo HTML con el contenido modificado
            
            File.WriteAllText(archivoHtml, contenido);

            // Reemplazar la extensión del archivo a .php
            string archivoAspx = Path.ChangeExtension(archivoHtml, ".aspx");
            File.Move(archivoHtml, archivoAspx);
        }
    }
}