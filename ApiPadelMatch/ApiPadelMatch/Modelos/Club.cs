namespace ApiPadelMatch.Modelos {
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
}
