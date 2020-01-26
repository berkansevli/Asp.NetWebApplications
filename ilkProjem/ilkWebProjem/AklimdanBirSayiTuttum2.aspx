<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AklimdanBirSayiTuttum2.aspx.cs" Inherits="ilkWebProjem.AklimdanBirSayiTuttum2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTahmin" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="btnDahaKucuk" runat="server" Text="Daha Küçük Bir Sayı Tut" OnClick="btnDahaKucuk_Click" />
            <asp:Button ID="btnDahaBuyuk" runat="server" Text="Daha Büyük Bir Sayı Tut" OnClick="btnDahaBuyuk_Click" />
            <asp:Button ID="btnBildin" runat="server" Text="Bildin" />
            <asp:HiddenField ID="hdMax" runat="server" />
            <asp:Label ID="lblMin" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="lblMax" runat="server" Text="Label"></asp:Label>
            <asp:HiddenField ID="hdMin" runat="server" />
        </div>
    </form>
</body>
</html>
