<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ornekler.aspx.cs" Inherits="ilkWebProjem.Ornekler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtVeri" runat="server"></asp:TextBox>
        <asp:Button ID="btnGoster" runat="server" Text="Merhaba" OnClick="btnGoster_Click" />
        <br />
        <asp:Label ID="lblDurum" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtSecenek" runat="server"></asp:TextBox>
        <asp:Button ID="btnEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click" />
        <asp:Button ID="btnSec" runat="server" Text="Seç" OnClick="btnSec_Click" />
        <asp:Label ID="lblSecilen" runat="server" Text=""></asp:Label>
        <br />
        <asp:ListBox ID="lbListe" runat="server" Height="201px" Width="125px"  ></asp:ListBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtSayi1" runat="server" Width="131px"></asp:TextBox>
        <asp:DropDownList ID="ddlIslemler" runat="server">
            <asp:ListItem Value="+">Topla</asp:ListItem>
            <asp:ListItem Value="-">Fark</asp:ListItem>
            <asp:ListItem Value="x">Çarp</asp:ListItem>
            <asp:ListItem Value="/">Böl</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtSayi2" runat="server"></asp:TextBox>
        =<asp:TextBox ID="txtSonuc" runat="server"></asp:TextBox>
        <asp:Button ID="btnTopla" runat="server" Text="Topla" OnClick="btnTopla_Click" />
        <br />
        <asp:RadioButtonList ID="rbIslemler" runat="server" RepeatDirection="Horizontal" Width="500px">
            <asp:ListItem Value="+">Topla</asp:ListItem>
            <asp:ListItem Value="-">Fark</asp:ListItem>
            <asp:ListItem Value="x">Çarp</asp:ListItem>
            <asp:ListItem Value="/">Böl</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        
        <asp:CheckBoxList ID="cbIslemler" runat="server" RepeatDirection="Horizontal" Width="500px">
             <asp:ListItem Value="+">Topla</asp:ListItem>
            <asp:ListItem Value="-">Fark</asp:ListItem>
            <asp:ListItem Value="x">Çarp</asp:ListItem>
            <asp:ListItem Value="/">Böl</asp:ListItem>
        </asp:CheckBoxList><asp:Button ID="btnCB4Islem" runat="server" Text="CB 4 İşlem" OnClick="btnCB4Islem_Click" /><br />

        <asp:ListBox ID="lbIslemlerSonuc" runat="server" Height="215px" Width="460px">
            <asp:ListItem>5+3=8</asp:ListItem>
            <asp:ListItem>9x5=45</asp:ListItem>
        </asp:ListBox>
    </form>
</body>
</html>
