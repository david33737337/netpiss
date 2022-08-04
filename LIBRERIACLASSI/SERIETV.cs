using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class SERIETV
{
    public int codSerie;
    public int codMedia;
    public string titolo;
    public string sinossi;
    public int codGenere;
    public int nStagioni;

    public SERIETV()
    {

    }

    public DataTable Select()
    {
        CONNESSIONE TV = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SerieTV_SelectAll";

        return TV.EseguiSPselectparam(cmd);
    }

    public DataTable Select(int codSerie)
    {
        CONNESSIONE TV = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "SerieTV_SelectOne";
        cmd.Parameters.AddWithValue("@codSerie", codSerie);

        return TV.EseguiSPselectparam(cmd);
    }

    public DataTable SelectLike()
    {
        CONNESSIONE TV = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "SerieTV_SelectLike";
        cmd.Parameters.AddWithValue("@codSerie", codSerie);
        cmd.Parameters.AddWithValue("@titolo", titolo);

        return TV.EseguiSPselectparam(cmd);
    }

    public void Insert()
    {
        CONNESSIONE TV = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "SerieTV_Insert";
        cmd.Parameters.AddWithValue("@codMedia", codMedia);
        cmd.Parameters.AddWithValue("@titolo", titolo);
        cmd.Parameters.AddWithValue("@sinossi", sinossi);
        cmd.Parameters.AddWithValue("@codGenere", codGenere);
        cmd.Parameters.AddWithValue("@nStagioni", nStagioni);

        TV.EseguiSPcmdparam(cmd);
    }

    public void Update()
    {
        CONNESSIONE TV = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "SerieTV_Update";
        cmd.Parameters.AddWithValue("@codSerie", codSerie);
        cmd.Parameters.AddWithValue("@codMedia", codMedia);
        cmd.Parameters.AddWithValue("@titolo", titolo);
        cmd.Parameters.AddWithValue("@sinossi", sinossi);
        cmd.Parameters.AddWithValue("@codGenere", codGenere);
        cmd.Parameters.AddWithValue("@nStagioni", nStagioni);

        TV.EseguiSPcmdparam(cmd);
    }

    public bool CheckOne()
    {
        CONNESSIONE TV = new CONNESSIONE();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "SerieTV_CheckOne";
        cmd.Parameters.AddWithValue("@codSerie", codSerie);
        cmd.Parameters.AddWithValue("@titolo", titolo);
        TV.EseguiSPselectparam(cmd);

        return dt.Rows.Count > 0;
    }
}