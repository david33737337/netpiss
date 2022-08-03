using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LIBRERIA
{
    public class GENERI
    {
        public int CodiceGenere;
        public string descrizione;

        public DataTable SelectAll()
        {
            CONNESSIONE C = new CONNESSIONE();
            return C.EseguiSp("GENERI_SelectAll");
        }

        public void Insert()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "GENERI_Insert";
            cmd.Parameters.AddWithValue("@DescrizioneGenere", descrizione);


            c.EseguiSpselectparam(cmd);
            //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

        }
        public void Update()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "GENERI_Update";
            cmd.Parameters.AddWithValue("@DescrizioneGenere", descrizione);
            cmd.Parameters.AddWithValue("@CodiceGenere", CodiceGenere);

            c.EseguiSpcmdpparam(cmd);

            //c.EseguiCommand("UPDATE tabTIPISPESE SET descrizione='" + descrizione + "'where codiceTipoSpesa=" + codicetipospesa);
        }

        public void Delete()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "GENERI_DELETE";
            cmd.Parameters.AddWithValue("@CodiceGenere", CodiceGenere);
            c.EseguiSpcmdpparam(cmd);
        }

    }


}
