<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TasKagitMakas.aspx.cs" Inherits="ilkWebProjem.TasKagitMakas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnTas" runat="server" Text="Taş" OnClick="btnTas_Click" />
            <asp:Button ID="btnKagit" runat="server" Text="Kağıt" OnClick="btnKagit_Click" />
            <asp:Button ID="btnMakas" runat="server" Text="Makas" OnClick="btnMakas_Click" />
            <br />
            <asp:Label ID="lblDurum" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblSec" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
