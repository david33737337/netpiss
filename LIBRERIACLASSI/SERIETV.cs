using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class SERIETV
{

    public SERIETV()
    {

    }

    public class AGGIORNADB
    {
        public int CodiceSerie;
        public int CodiceMedia;
        public string Titolo;
        public string Sinossi;
        public int CodiceGenere;
        public int NumeroStagioni;

        public void Insert()
        {
            CONNESSIONE TV = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "SERIETV_Insert";
            cmd.Parameters.AddWithValue("@CodiceMedia", CodiceMedia);
            cmd.Parameters.AddWithValue("@Titolo", Titolo);
            cmd.Parameters.AddWithValue("@Sinossi", Sinossi);
            cmd.Parameters.AddWithValue("@CodiceGenere", CodiceGenere);
            cmd.Parameters.AddWithValue("@NumeroStagioni", NumeroStagioni);

            TV.EseguiSPcmdparam(cmd);
        }

        public void Update()
        {
            CONNESSIONE TV = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "SERIETV_Update";
            cmd.Parameters.AddWithValue("@CodiceSerie", CodiceSerie);
            cmd.Parameters.AddWithValue("@CodiceMedia", CodiceMedia);
            cmd.Parameters.AddWithValue("@Titolo", Titolo);
            cmd.Parameters.AddWithValue("@Sinossi", Sinossi);
            cmd.Parameters.AddWithValue("@CodiceGenere", CodiceGenere);
            cmd.Parameters.AddWithValue("@NumeroStagioni", NumeroStagioni);

            TV.EseguiSPcmdparam(cmd);
        }
        public DataTable SelectLike()
        {
            CONNESSIONE TV = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "SERIETV_SelectLike";
            cmd.Parameters.AddWithValue("@CodiceSerie", CodiceSerie);
            cmd.Parameters.AddWithValue("@Titolo", Titolo);

            return TV.EseguiSPselectparam(cmd);
        }

        public bool CheckOne()
        {
            CONNESSIONE TV = new CONNESSIONE();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "SerieTV_CheckOne";
            cmd.Parameters.AddWithValue("@CodiceSerie", CodiceSerie);
            cmd.Parameters.AddWithValue("@Titolo", Titolo);
            TV.EseguiSPselectparam(cmd);

            return dt.Rows.Count > 0;
        }

    }

    public class CONTROLLI
    {
        public DataTable Select() //SelectAll
        {
            CONNESSIONE TV = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SERIETV_SelectAll";

            return TV.EseguiSPselectparam(cmd);
        }

        public DataTable Select(int CodiceSerie) //SelectOne
        {
            CONNESSIONE TV = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "SERIETV_SelectOne";
            cmd.Parameters.AddWithValue("@CodiceSerie", CodiceSerie);

            return TV.EseguiSPselectparam(cmd);
        }

    }
}
