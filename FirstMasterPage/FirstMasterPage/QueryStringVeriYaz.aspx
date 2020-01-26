<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStringVeriYaz.aspx.cs" Inherits="FirstMasterPage.QueryStringVeriYaz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtVeri" runat="server"></asp:TextBox><asp:Button ID="btnGonder" runat="server" Text="Gönder" OnClick="btnGonder_Click" />
    </form>
</body>
</html>
