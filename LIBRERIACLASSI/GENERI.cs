using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


public class GENERI
{

    public class CONTROLLI
    {
        public DataTable SelectAll()
        {
            CONNESSIONE C = new CONNESSIONE();

            return C.EseguiSp("GENERI_SelectAll");
        }
        public DataTable SelectOne(int CodiceGenere)
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();

            cmd.CommandText = "GENERI_SelectOne";
            cmd.Parameters.AddWithValue("@CodiceGenere", CodiceGenere);

            return dt = c.EseguiSPselectparam(cmd);

        }

    }

    public class AGGIORNADB
    {
        public int CodiceGenere;
        public string descrizione;

        public void Insert()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "GENERI_Insert";
            cmd.Parameters.AddWithValue("@DescrizioneGenere", descrizione);

            c.EseguiSPselectparam(cmd);
        }

        public void Update()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "GENERI_Update";
            cmd.Parameters.AddWithValue("@DescrizioneGenere", descrizione);
            cmd.Parameters.AddWithValue("@CodiceGenere", CodiceGenere);

            c.EseguiSPcmdparam(cmd);

        }

        public void Delete()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "GENERI_Delete";
            cmd.Parameters.AddWithValue("@CodiceGenere", CodiceGenere);

            c.EseguiSPcmdparam(cmd);
        }

        public bool CheckOne()
        {
            CONNESSIONE c = new CONNESSIONE();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "GENERI_CheckOne";
            cmd.Parameters.AddWithValue("@DescrizioneGenere", descrizione);
            dt = c.EseguiSPselectparam(cmd);

            return dt.Rows.Count > 0;
        }
    }

}
