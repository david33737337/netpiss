<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btnInserisci" runat="server" Text="Inserisci" OnClick="btnInserisci_Click" /></td>
                    <td>
                        <asp:Button ID="btnModifica" runat="server" Text="Modifica" OnClick="btnModifica_Click" /></td>
                    <td>
                        <asp:Button ID="btnElimina" runat="server" Text="Elimina" OnClick="btnElimina_Click" /></td>
                </tr>
            </table>
            <asp:GridView ID="griglia" runat="server" DataKeyNames="CodiceGenere" OnSelectedIndexChanged="griglia_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="seleziona" ShowHeader="True" Text="Seleziona" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
