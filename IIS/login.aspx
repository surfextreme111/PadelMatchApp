<%@ Page Language="C#" %>
<%@ Import Namespace="System.Net" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="icon" href="images/favicon.jpg" type="image/x-icon">
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #e2e2e2;
        }
        .login-container {
            background-color: #009485;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
        }
        .login-container h1 {
            margin-top: 0;
            color: white;
        }
        .login-container img.logo {
            max-width: 150px; 
            margin-bottom: 20px;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 90%;
            padding: 11px;
            margin: 10px 0;
            border-radius: 28px;
            border: none;
        }
        .login-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            border-radius: 5px;
            border: none;
            background-color: white;
            color: #00ced1; /* Color turquesa */
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .login-container input[type="submit"]:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="images/favicon.jpg" class="logo">
        <h1>PadelMatch Documentation</h1>
        <% 
            if (Request.HttpMethod == "POST")
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];

                string url = "http://docs.padelmatch.elitepadelformation.com/api/docu/LoginRequest";
                string json = "{\"username\":\"" + username + "\",\"password\":\"" + password + "\"}";

                try
                {
                    using (WebClient client = new WebClient())
                    {
                        client.Headers[HttpRequestHeader.ContentType] = "application/json";
                        string response = client.UploadString(url, "POST", json);

                        if (!string.IsNullOrEmpty(response))
                        {
                            HttpCookie tokenCookie = new HttpCookie("token", response);
                            tokenCookie.Expires = DateTime.Now.AddDays(30);
                            Response.Cookies.Add(tokenCookie);
                            Response.Redirect("http://docs.padelmatch.elitepadelformation.com/");
                        }
                        else
                        {
                            Response.Write("<p style='color: red;'>Credenciales incorrectas</p>");
                        }
                    }
                }
                catch (WebException ex)
                {
                    Response.Write("<p style='color: red;'>Error en la solicitud: " + ex.Message + "</p>");
                }
            }
            else if (Request.HttpMethod == "GET" && !string.IsNullOrEmpty(Request.QueryString["error"]))
            {
                Response.Write("<p style='color: red;'>" + Server.HtmlEncode(Request.QueryString["error"]) + "</p>");
            }
        %>
        <form action="" method="post">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br><br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
