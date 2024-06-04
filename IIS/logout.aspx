<%@ Page Language="C#" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
    <link rel="icon" href="favicon.jpg" type="image/x-icon">
</head>
<body>
    <% 
    // Verificar si la cookie 'token' existe
    if (Request.Cookies["token"] != null) {
        // Eliminar la cookie 'token'
        Response.Cookies["token"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("login.aspx");
    } else {
        // Si la cookie 'token' no existe, redirigir al usuario al formulario de inicio de sesión
        Response.Redirect("login.aspx");
    }
    %>
</body>
</html>
