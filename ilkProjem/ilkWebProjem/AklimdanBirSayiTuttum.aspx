<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AklimdanBirSayiTuttum.aspx.cs" Inherits="ilkWebProjem.AklimdanBirSayiTuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtSayi" runat="server"></asp:TextBox>
            <asp:Button ID="btnKontrol" runat="server" Text="Kontrol Et" OnClick="btnKontrol_Click" />
            <asp:Label ID="lblDurum" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblHile" runat="server" Text=""></asp:Label>
            <asp:HiddenField ID="hfTutulanSayi" runat="server" />
            <asp:Label ID="lblPostBackDurum" runat="server" Text=""></asp:Label>
            <br />
            <asp:ListBox ID="lbTahminEdilenSayilar" runat="server" Height="129px" Width="274px"></asp:ListBox>
            <br />
            <asp:Button ID="btnYeniOyun" runat="server" Text="Yeni Oyun" />
        </div>
    </form>
</body>
</html>
