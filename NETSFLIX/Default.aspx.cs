using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaGriglia();
    }
    

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtDescrizione.Text.Trim()))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ERRORE!", "alert('Campi vuoto')", true);
            return;
        }

        GENERI g = new GENERI();
        g.descrizione = txtDescrizione.Text.Trim();

        if (g.CheckOne())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ERRORE!", "alert('TipoSpesa già presente')", true);
            return;
        }



        g.Insert();
        txtDescrizione.Text = "";

        CaricaGriglia();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ok!", "alert('TipoSpesa inserita')", true);
        return;
        
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (griglia.SelectedRow == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ERRORE!", "alert('Nessuna riga selezionata')", true);
            return;
        }

        if (string.IsNullOrEmpty(txtDescrizione.Text.Trim()))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ERRORE!", "alert('Campi vuoto')", true);
            return;
        }

        GENERI g = new GENERI();
        g.descrizione = txtDescrizione.Text.Trim();

        if (g.CheckOne())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ERRORE!", "alert('TipoSpesa già presente')", true);
            return;
        }
        g.CodiceGenere = int.Parse(griglia.SelectedDataKey[0].ToString());
        g.Update();
        txtDescrizione.Text = "";
        griglia.SelectedIndex = 0;
        CaricaGriglia();
    }

    protected void btnElimina_Click(object sender, EventArgs e)
    {
        GENERI g = new GENERI();
        g.CodiceGenere = int.Parse(griglia.SelectedDataKey[0].ToString());
        g.descrizione = txtDescrizione.Text.Trim();
        if (!g.CheckOne())
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Errore", "alert('Spesa non presente')", true);
            return;
        }
        g.Delete();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "OK", "alert('Spesa eliminata')", true);

        txtDescrizione.Text = "";
        CaricaGriglia();
    }

    protected void griglia_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtDescrizione.Text = griglia.SelectedRow.Cells[2].Text;
    }
    protected void CaricaGriglia()
    {
        GENERI g = new GENERI();
        griglia.DataSource = g.SelectAll();
        griglia.DataBind();
    }
}