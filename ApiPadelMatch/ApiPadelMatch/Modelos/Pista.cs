namespace ApiPadelMatch.Modelos {
    public class Pista {
        public int idpista { get; set; }
        public int idclub { get; set; }
        public int tipopista{ get; set; }
        public int ubicacionpista { get; set; }
        public string urlimagenes { get; set; }
    }

    public enum TipoPista {
        Cristal_Cesped,
        Cristal_Cemento,
        Muro_Cemento,
        Muro_Cesped
    }
    public enum UbicacionPista {
        Indoor,
        Outdoor
    }

}
