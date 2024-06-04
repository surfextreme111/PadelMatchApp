icon:material/tennis-ball

!!! note "PadelMatch"
    En nuestra aplicacion de PadelMatch podrás encontrar pistas disponibles para poder jugar, en el club que desees que implemente nuestro software,  también tenemos un sistema interno de puntos por usuario con rankings mundiales,
    nada más entrar a la aplicación podrás ver un login para usuarios con opción para registrarse.


!!! tip "Casos de uso"
    1 - Crear Pista: con este método podrás crear todas las pistas de tu club, este método recibirá por ==Header== el **Apikey** y por ==Body== en forma de JSON pasaremos
    PistaTipo **enum**, PistaUbi **enum**, PistaVisual **enum**.

    2 - Crear UsuarioRol: con este método podrás crear usuarios con diferentes roles para acceder a diferentes niveles del software. Los parámetros de este método son: ==Header==  **Username**, ==Header==  **Password**, ==Header==  **Rol** el cual será uno de los enums...

    3 - Reservar Hora: con este método podrás reservar para jugar una partida con los filtros que decidas.

    4 - MoreXPBonus: este método aumentará la experiencia obtenida despues de una partida al jugador que el club considere que lo ha hecho mejor.

    5 - CreateReservasNextMonth: Con este método crearemos las posibles horas para

!!! warning "Usuarios Roles"
    Asigna los roles con cuidado ya que un admin podrá borrar pistas eliminar otros usuarios de menor Rol...

!!! info "RESPUESTAS API PADELMATCH"
    Genéricos:

    - 200 (OK)

    - 400 (BadRequest + Mensaje de error)

    - 500 (Error interno de la API - Mensaje de excepción)

#### Enums:
Enum UserRol --> (1) <--
{.annotate}

Enum PistaTipo --> (2) <--
{.annotate}

Enum PistaUbi --> (3) <--
{.annotate}

Enum PistaVisual --> (4) <--
{.annotate}

1.  :man_raising_hand:
``` json title="UserRol"
{
  "Invitado": 0,
  "Registrado": 1,
  "Moderador": 2,
  "Admin": 3,
}
```

2. :man_raising_hand:
```json title="PistaTipo"
{
  "Simples": 0,
  "Dobles": 1
}
```

3. :man_raising_hand:
```json title="PistaUbi"
{
  "Exterior": 0,
  "Exterior Cubierta": 1,
  "Interior": 2
}
```

4. :man_raising_hand:
```json title="PistaVisual"
{
  "Panoramica": 0,
  "Antigua": 1
}
```

## Clases PadelMatch

``` class title="Pista"
public class Pista {
    public int IdClub { get; set; }
    public int RefLocal { get; set; }
    public int CantidadJugadores { get; set; }
    public PistaTipo Tipo { get; set; } // Enumeración PistaTipo para el tipo de pista
    public PistaUbi Ubicacion { get; set; } // Enumeración PistaUbi para la ubicación de la pista
    public int Reserva { get; set; }
    public string Material { get; set; }
    public string[] UrlsImgs { get; set; } // Array de strings para las URLs de las imágenes
    public DateTime FechaMod { get; set; }
}
```

``` class title="Reserva"
public class Reserva {
    public int idreserva { get; set; }
    public int idusuarioprincipal { get; set; }
    public int idpista { get; set; }
    public DateTime horainicio { get; set; }
    public DateTime horafin { get; set; }
    public int codigoinvitacion { get; set; }
    public boolean permitecancelacion { get; set; }
    public int idusuario2 { get; set; }
    public int idusuario3 { get; set; }
    public int idusuario4 { get; set; }
    public int idclub { get; set; }
}
```
!!! warning
  Se permitirá la cancelación de una una reserva hasta 2horas antes de la partida que se pondrá  y ya no se podrán anular reservas y el importe pagado no se devolverá

``` class title="Usuario"
public class Usuario {
    public int idusuario { get; set; }
    public string usuario { get; set; }
    public string mail { get; set; }
    public string contraseña { get; set; }
    public int nivel { get; set; }
    public string foto { get; set; }
    public int victorias { get; set; }
    public int derrotas { get; set; }
}
```

``` class title="Club"
public class Club {
    public int idclub { get; set; }
    public string nombreclub { get; set; }
    public int cantidadpistas { get; set; }
    public string descripción { get; set; }
    public string idpistas { get; set; }
    public int idusuariocreador { get; set; }
    public datetime fechain { get; set; }
}
```


### Reservas
!!! info
  ID_Reserva: Un identificador único para cada reserva (clave primaria).
  ID_Usuario_Principal: El identificador del usuario que realiza la reserva.
  ID_Recurso: El identificador del recurso que se reserva.
  Fecha: La fecha en la que se realiza la reserva.
  Hora_Inicio y Hora_Fin: Los momentos de inicio y fin de la reserva.
  Estado: El estado de la reserva (confirmada, pendiente, cancelada, etc.).
  Codigo_Invitacion: Un código de invitación único para la reserva que los usuarios pueden usar para unirse a la reserva.
  Permite_Cancelacion: Un indicador que permite al usuario principal cancelar la reserva.
  ID_Usuarios_Apuntados: Una lista de identificadores de usuarios apuntados a la reserva.
  IdClub: club al cual pertenece la reserva



