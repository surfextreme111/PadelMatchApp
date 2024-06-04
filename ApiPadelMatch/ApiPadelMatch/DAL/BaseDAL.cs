using Npgsql;

namespace ApiPadelMatch.DAL {
    public class BaseDAL {
        private static IConfiguration? _conf { get; set; }
        public static IConfiguration Conf {
            get {
                return _conf ?? (_conf = new ConfigurationBuilder()
                        .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
                        .Build());
            }
        }

        public static bool InsertarLogs(Utils.TipoLog tipoLog, string mensaje, string path, int idusuario) {
            // para evitar el error con las comillas simples
            string mensajeLimpio = mensaje.Replace("'", "''");

            string queryHeader = "INSERT INTO app.logs (id, tipo, mensaje, pathmetodo) VALUES";

            int a = (int)tipoLog;
            string queryBody = $"(default, {a},'{mensajeLimpio}','{path}') ";

            string queryFooter = ";";

            try {
                using (var connection = new NpgsqlConnection(Conf.GetConnectionString("rfc"))) {
                    connection.Open();
                    using (var additionalCommand = new NpgsqlCommand(queryHeader + queryBody + queryFooter, connection)) {
                        additionalCommand.ExecuteNonQuery(); // Execute the additional query
                    }
                }
                return true;
            } catch (Exception ex) {
                return false;
            }
        }
    }
}
