icon:material/tennis-ball

!!! note "Descripción PadelMatch"
    En nuestra aplicacion de PadelMatch podrás encontrar pistas disponibles para poder jugar, en el club que desees que implemente nuestro software,
    nada más entrar a la aplicación podrás ver un login para usuarios con opción para registrarse.


!!! tip "Casos de uso"
    1 - CrearPista: permite Crear una pista para tu club

    2 - Obtener reservas del dia de una pista

    3 - Post Reserva: con este método podrás reservar para jugar una partida con los filtros que decidas.

!!! warning "Usuarios Roles"
    Asigna los roles con cuidado ya que un admin podrá borrar pistas eliminar otros usuarios de menor Rol...

!!! info "RESPUESTAS API PADELMATCH"
    Genéricos:

    - 200 (OK)

    - 400 (BadRequest + Mensaje de error)

    - 500 (Error interno de la API - Mensaje de excepción)

#### Enums:
Enum rol --> (1) <--
{.annotate}

Enum tipopista --> (2) <--
{.annotate}

Enum ubicacionpista --> (3) <--
{.annotate}

Enum PistaVisual --> (4) <--
{.annotate}

1.  :man_raising_hand:
``` json title="rol"
{
  "User": 1,
  "Admin": 3,
}
```

2. :man_raising_hand:
```json title="tipopista"
{
  "Cristal_Cesped": 1,
  "Cristal_Cemento": 2,
  "Muro_Cemento": 3,
  "Muro_Cesped": 4

}
```

3. :man_raising_hand:
```json title="ubicacionpista"
{
  "Indoor": 1,
  "Outdoor": 2,
}
```

4. :man_raising_hand:
```json title="tipolog"
{
  "ERROR": 0,
  "WARN": 1,
  "WARN": 2,
  "WARN": 3

}
```

## Clases PadelMatch

``` class title="Pista"
public class Pista {
    public int idpista { get; set; }
    public int idclub { get; set; }
    public int tipopista{ get; set; }
    public int ubicacionpista { get; set; }
    public string urlimagenes { get; set; }
}
```

``` class title="Reserva"
public class Reserva {
    public int idreserva { get; set; }
    public int idpista { get; set; }
    public int idusuario { get; set; }
    public DateTime horainicio { get; set; }
    public DateTime horafin { get; set; }
    public int codigoinvitacion { get; set; }
    public int idclub { get; set; }
    public int idpareja1 { get; set; }
    public int idpareja2 { get; set; }
    public int idusuarioreserva { get; set; }
}
```

``` class title="Usuario"
public class Usuario {
    public int idusuario { get; set; }
    public string username { get; set; }
    public string password { get; set; }
    public string email { get; set; }
    public int nivel { get; set; }
    public string foto { get; set; }
    public int victorias { get; set; }
    public int derrotas { get; set; }
    public int idrol { get; set; }
}
```

``` class title="Club"
public class Club {
    public int idclub { get; set; }
    public string nombre { get; set; }
    public string descripcion { get; set; }
    public int idusuariocreador { get; set; }
    public DateTime fechain { get; set; }
    public int idprovincia { get; set; }
    public string imagen { get; set; }
    public string coordenadas { get; set; }
}
```
``` class title="Pareja"
public class Pareja {
    public int IdPareja { get; set; }
    public int IdUsuario1 { get; set; }
    public int IdUsuario2 { get; set; }
}
```

### Metodos ApiInventario

|º| Endpoint Name   |  Endpoint type |
|-| -------- | -- |
|1|  [GetProvincias](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getprovincias)    | Get  |
|2|  [GetClubs](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getclubs)    | Get  |
|3|  [GetClubsFav](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getclubsfav)    | Post  |
|4|  [GetClubXId](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getclubxid)    | Post  |
|5|  [CambiarClubFav](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#cambiarclubfav)    | Post  |
|6|  [GetPistas](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getpistas)    | Get  |
|7|  [CrearPista](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#crearpista)    | Post  |
|8|  [BorrarPistaXId](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#borrarpistaxid)    | Post  |
|9|  [GetEmailExistente](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getemailexistente)    | Post  |
|10|  [LoginCorrecto](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#logincorrecto)    | Post  |
|11|  [GetUsuarios](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getusuarios)    | Get  |
|12|  [ObtenerDatosUsuario](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#obtenerdatosusuario)    | Post  |
|13|  [RegistrarUsuario](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#registrarusuario)    | Post  |
|14|  [GetUsuarioXId](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getusuarioxid)    | Post  |
|15|  [ActualizarUsuario](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#actualizarusuario)    | Put  |
|16|  [GetUsuId](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getusuid)    | Post  |
|17|  [PostReserva](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#postreserva)    | Post  |
|18|  [GetHorasReservadas](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#gethorasreservadas)    | Post  |
|19|  [GetReservasUsuario](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getreservasusuario)    | Post  |
|20|  [ActualizarReserva](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#actualizareserva)    | Put  |
|21|  [GetReservasProximas](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getreservasproximas)    | Get  |
|22|  [BorrarReservaXId](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#borrarreservaxid)    | Post  |
|23|  [GetParejaXId](http://docs.padelmatch.elitepadelformation.com/es/APIS/APIPadelMatch/#getparejaxid)    | Post  |

### **GetProvincias**
!!! note "Description"
    El Endpoint ==GetProvincias== Permite recuperar las provincias que tenemos disponibles
!!! info "Info"
    Ruta: http://api.padelmatch.elitepadelformation.com/api/GetProvincias

<div class="annotate" markdown>

> Respuesta: --> (1) <--

</div>
1.  :man_raising_hand:
``` json title="response:"
{
    [
    {
        "idprovincia": 1,
        "nombre": "Valencia"
    },
    {
        "idprovincia": 3,
        "nombre": "Madrid"
    },
    {
        "idprovincia": 4,
        "nombre": "Alicante"
    },
    {
        "idprovincia": 2,
        "nombre": "Catellón"
    }
    ]
}
```

**Parámetros de GetProvincias:**
No necesita


#### Code exe
=== "C#"

    ``` c#
    var options = new RestClientOptions("http://api.padelmatch.elitepadelformation.com/");
    var client = new RestClient(options);
    var request = new RestRequest("api/GetProvincias");

    var response = await client.PostAsync(request);

    return response.Content;
    ```

=== "java"

    ``` java
        import org.apache.http.client.methods.CloseableHttpResponse;
        import org.apache.http.client.methods.HttpPost;
        import org.apache.http.entity.StringEntity;
        import org.apache.http.impl.client.CloseableHttpClient;
        import org.apache.http.impl.client.HttpClients;

        import java.io.IOException;

        public class Main {
            public static void main(String[] args) throws IOException {

                CloseableHttpClient httpClient = HttpClients.createDefault();
                HttpPost httpPost = new HttpPost("http://api.padelmatch.elitepadelformation.com/api/GetProvincias");

                CloseableHttpResponse response = httpClient.execute(httpPost);

                System.out.println(response.getEntity().getContent().toString());
            }
        }
    ```

### **CrearPista**
!!! note "Description"
    El Endpoint ==CrearPista== permite crear una pista para tu club.

!!! info "Info"
    Ruta: http://api.padelmatch.elitepadelformation.com/api/CrearPista

<div class="annotate" markdown>

> Respuesta: --> (1) <--

</div>
1.  :man_raising_hand:
``` json title="response:"
{
    true/false
}
```

**Parámetros de CrearPista:**

| Nombre | Tipo Parametro |  Ejemplo  |       | Tipo   | Descripción             |
| ----------|--|---|------ | ------ | ------------------------------------------ |
| `idclub`  | Header | (0) | Required                            | int32 |  id local del club |
| `tipopista`  | Header | (0)  | Required                            | int32 | Materiales de la pista         |
| `ubicacionpista`  | Header | (0)  | Required                            | int32 | Ubicación de la pista si es  indoor, outdoor ...        |
| `urlpista`  | Header | (0)  | Required                            | string | Fotos de la pista         |

!!! warning "Url"
    La url tiene que ser accesible como: https://wpt-open500.com/wp-content/uploads/2022/08/Curiosidades-pista-padel-blog.jpg
    { .annotate }

#### Code exe
=== "C#"

    ``` c#
    var options = new RestClientOptions("http://api.padelmatch.elitepadelformation.com/");
    var client = new RestClient(options);
    var request = new RestRequest("api/CrearPista");
    request.AddHeader("idclub", idclub.ToString());
    request.AddHeader("tipopista", tipo.ToString());
    request.AddHeader("ubicacionpista", ubi.ToString());
    request.AddHeader("urlpista", urlimgs);

    var response = await client.PostAsync(request);

    return response.Content;
    ```

=== "java"

    ``` java
        import org.apache.http.client.methods.CloseableHttpResponse;
        import org.apache.http.client.methods.HttpPost;
        import org.apache.http.entity.StringEntity;
        import org.apache.http.impl.client.CloseableHttpClient;
        import org.apache.http.impl.client.HttpClients;

        import java.io.IOException;

        public class Main {
            public static void main(String[] args) throws IOException {
                int idclub = 0;
                int tipopista = 0;
                int ubicacionpista = 0;
                String urlpista = "your_image_urls";

                CloseableHttpClient httpClient = HttpClients.createDefault();
                HttpPost httpPost = new HttpPost("http://api.padelmatch.elitepadelformation.com/");
                httpPost.addHeader("idclub", Integer.toString(idclub));
                httpPost.addHeader("ubi", Integer.toString(ubicacionpista));
                httpPost.addHeader("tipopista", Integer.toString(tipo));
                httpPost.addHeader("urlpista", urlpista);

                CloseableHttpResponse response = httpClient.execute(httpPost);

                System.out.println(response.getEntity().getContent().toString());
            }
        }
    ```






### **GetHorasReservadas**
!!! note "Description"
    El Endpoint ==GetHorasReservadas== permite recuperar las horas reservadas de la pista de ese dia.

!!! info "Info"
    Ruta: http://api.padelmatch.elitepadelformation.com/api/GetHorasReservadas

<div class="annotate" markdown>

> Respuesta: --> (1) <--

</div>
1.  :man_raising_hand:
``` json title="response:"
{
    [
  "16:30",
  "09:30",
  "08:00",
  "09:30"
    ]
}
```

**Parámetros de GetHorasReservadas:**

| Nombre | Tipo Parametro |  Ejemplo  |       | Tipo   | Descripción             |
| ----------|--|---|------ | ------ | ------------------------------------------ |
| `fecha`  | Header | (2024-05-27T10:00:00) | Required                            | string |  fecha |
| `idPista`  | Header | (1) | Required                            | int32 |  id local del club |

!!! warning "Url"
    Obtendrás las horas reservadas de la pista de la fecha(de ese dia)
    { .annotate }

#### Code exe
=== "C#"

    ``` c#
    var options = new RestClientOptions("http://api.padelmatch.elitepadelformation.com/");
    var client = new RestClient(options);
    var request = new RestRequest("api/GetHorasReservadas");
    request.AddHeader("idPista", idPista.ToString());
    request.AddHeader("fecha", fecha.ToString());

    var response = await client.PostAsync(request);

    return response.Content;
    ```

=== "java"

    ``` java
        import org.apache.http.client.methods.CloseableHttpResponse;
        import org.apache.http.client.methods.HttpPost;
        import org.apache.http.entity.StringEntity;
        import org.apache.http.impl.client.CloseableHttpClient;
        import org.apache.http.impl.client.HttpClients;

        import java.io.IOException;

        public class Main {
            public static void main(String[] args) throws IOException {
                int idPista = 0;
                String fecha = "your_fecha";

                CloseableHttpClient httpClient = HttpClients.createDefault();
                HttpPost httpPost = new HttpPost("http://api.padelmatch.elitepadelformation.com/");
                httpPost.addHeader("idPista", Integer.toString(idPista));
                httpPost.addHeader("fecha", fecha);

                CloseableHttpResponse response = httpClient.execute(httpPost);

                System.out.println(response.getEntity().getContent().toString());
            }
        }
    ```





### **PostReserva**
!!! note "Description"
    El Endpoint ==PostReserva== permite crear una reserva pasando los Headers requeridos por el método.

!!! info "Info"
    Ruta: http://api.padelmatch.elitepadelformation.com/api/PostReserva

<div class="annotate" markdown>

> Respuesta: --> (1) <--

</div>
1.  :man_raising_hand:
``` json title="response:"
{
    [
  "16:30",
  "09:30",
  "08:00",
  "09:30"
    ]
}
```

**Parámetros de PostReserva:**

| Nombre | Tipo Parametro |  Ejemplo  |       | Tipo   | Descripción             |
| ----------|--|---|------ | ------ | ------------------------------------------ |
| `idPista`  | Header | (455) | Required                            | int32 |  id de la pista|
| `horainicio`  | Header | (2024-05-27T10:00:00) | Required                            | string |  fecha |
| `idClub`  | Header | (170) | Required                            | int32 |  id local del club |
| `idPareja1`  | Header | (1) | Required                            | int32 |  id de la pareja1 |
| `idPareja2`  | Header | (2) | Required                            | int32 |  id de la pareja2 |
| `idusuarioreserva`  | Header | (1) | Required                            | int32 |  id del usuario que crea la reserva |

!!! warning "Url"
    La url tiene que ser accesible como: https://wpt-open500.com/wp-content/uploads/2022/08/Curiosidades-pista-padel-blog.jpg
    { .annotate }

#### Code exe
=== "C#"

    ``` c#
    var options = new RestClientOptions("http://api.padelmatch.elitepadelformation.com/");
    var client = new RestClient(options);
    var request = new RestRequest("api/PostReserva");
    request.AddHeader("idPista", idPista.ToString());
    request.AddHeader("horainicio", horainicio.ToString());
    request.AddHeader("idClub", idClub.ToString());
    request.AddHeader("idPareja1", idPareja1.ToString());
    request.AddHeader("idPareja2", idPareja2.ToString());
    request.AddHeader("idusuarioreserva", idusuarioreserva.ToString());

    var response = await client.PostAsync(request);

    return response.Content;
    ```

=== "java"

    ``` java
        import org.apache.http.client.methods.CloseableHttpResponse;
        import org.apache.http.client.methods.HttpPost;
        import org.apache.http.entity.StringEntity;
        import org.apache.http.impl.client.CloseableHttpClient;
        import org.apache.http.impl.client.HttpClients;

        import java.io.IOException;

        public class Main {
            public static void main(String[] args) throws IOException {
                int idPista = 0;
                String fecha = "your_fecha";
                int idClub = 0;
                int idpareja1 = 0;
                int idpareja2 = 0;
                int idusuarioreserva = 0;

                CloseableHttpClient httpClient = HttpClients.createDefault();
                HttpPost httpPost = new HttpPost("http://api.padelmatch.elitepadelformation.com/PostReserva");
                httpPost.addHeader("idPista", Integer.toString(idPista));
                httpPost.addHeader("fecha", fecha);
                httpPost.addHeader("idClub", Integer.toString(idClub));
                httpPost.addHeader("idpareja1", Integer.toString(idpareja1));
                httpPost.addHeader("idpareja2", Integer.toString(idpareja2));
                httpPost.addHeader("idusuarioreserva", Integer.toString(idusuarioreserva));

                CloseableHttpResponse response = httpClient.execute(httpPost);

                System.out.println(response.getEntity().getContent().toString());
            }
        }
    ```

### **ActualizarReserva**
!!! note "Description"
    El Endpoint ==ActualizarReserva== permite crear una reserva pasando los Headers requeridos por el método.

!!! info "Info"
    Ruta: http://api.padelmatch.elitepadelformation.com/api/ActualizarReserva

<div class="annotate" markdown>

> Respuesta: --> (1) <--

</div>
1.  :man_raising_hand:
``` json title="response:"
{
  "Reserva realizada"
}
```

**Parámetros de ActualizarReserva:**

| Nombre | Tipo Parametro |  Ejemplo  |       | Tipo   | Descripción             |
| ----------|--|---|------ | ------ | ------------------------------------------ |
| `idReserva`  | Header | (455) | Required                            | int32 |  id de la pista|
| `horainicio`  | Header | (2024-05-27T10:00:00) | Required                            | string |  fecha |
| `horafin`  | Header | (2024-05-27T11:00:00) | Required                            | string |  fecha |
| `idPareja2`  | Header | (2) | Required                            | int32 |  id de la pareja2 |

!!! warning "Url"
    La url tiene que ser accesible como: https://wpt-open500.com/wp-content/uploads/2022/08/Curiosidades-pista-padel-blog.jpg
    { .annotate }

#### Code exe
=== "C#"

    ``` c#
    var options = new RestClientOptions("http://api.padelmatch.elitepadelformation.com/");
    var client = new RestClient(options);
    var request = new RestRequest("api/ActualizarReserva");
    request.AddHeader("idreserva", idreserva.ToString());
    request.AddHeader("horainicio", horainicio.ToString());
    request.AddHeader("horafin", horafin.ToString());
    request.AddHeader("idPareja2", idPareja2.ToString());

    var response = await client.PutAsync(request);

    return response.Content;
    ```

=== "java"

    ``` java
        import org.apache.http.client.methods.CloseableHttpResponse;
        import org.apache.http.client.methods.HttpPost;
        import org.apache.http.entity.StringEntity;
        import org.apache.http.impl.client.CloseableHttpClient;
        import org.apache.http.impl.client.HttpClients;

        import java.io.IOException;

        public class Main {
            public static void main(String[] args) throws IOException {
                int idPista = 0;
                String fecha = "your_fecha";
                int idClub = 0;
                int idpareja1 = 0;
                int idpareja2 = 0;
                int idusuarioreserva = 0;

                CloseableHttpClient httpClient = HttpClients.createDefault();
                HttpPost httpPost = new HttpPut("http://api.padelmatch.elitepadelformation.com/ActualizarReserva");
                httpPost.addHeader("idPista", Integer.toString(idPista));
                httpPost.addHeader("fecha", fecha);
                httpPost.addHeader("idClub", Integer.toString(idClub));
                httpPost.addHeader("idpareja1", Integer.toString(idpareja1));
                httpPost.addHeader("idpareja2", Integer.toString(idpareja2));
                httpPost.addHeader("idusuarioreserva", Integer.toString(idusuarioreserva));

                CloseableHttpResponse response = httpClient.execute(httpPost);

                System.out.println(response.getEntity().getContent().toString());
            }
        }
    ```


