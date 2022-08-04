<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registazione_conferma.aspx.cs" Inherits="registazione_conferma" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <%--css--%>
    <link href="../css/css_login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="background">
            <div class="form">
                <div class="dati">
                    <div class="form-group" style="margin-bottom: 40px;">
                        <h1>
                            <asp:Label ID="lblLogin" Style="font-family: sans-serif; font-weight: bold;" runat="server" Text="CONFERMA"></asp:Label></h1>
                    </div>
                    <div class="form-group">
                        <%--inserimento mail--%>
                        <asp:TextBox ID="txtEmail" CssClass="TXT" placeholder="Email o numero di telefono" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtCodice" CssClass="TXT" placeholder="Codice di conferma" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtPassword" CssClass="TXT" placeholder="Codice di conferma" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnInvia" CssClass="TXT" style="color: #ffffff; background-color: #ff0000; border-radius: 5px;" runat="server" Text="Invia" OnClick="btnInvia_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
