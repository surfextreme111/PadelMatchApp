namespace ApiPadelMatch.Modelos {
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
}
