<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ilkSayfam.aspx.cs" Inherits="ilkWebProjem.ilkSayfam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" />
            <br />
            <br />
            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem Value="1">Kırmızı</asp:ListItem>
                <asp:ListItem Value="2">Beyaz</asp:ListItem>
                <asp:ListItem>Mavi</asp:ListItem>
                <asp:ListItem>Yeşil</asp:ListItem>
            </asp:BulletedList>
            <br />
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" BackColor="Yellow" ForeColor="Fuchsia" OnClick="btnKaydet_Click" />
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Beni hatırla" />
            <br />
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Elma</asp:ListItem>
                <asp:ListItem Enabled="False" Selected="True">Armut</asp:ListItem>
                <asp:ListItem Selected="True">Çilek</asp:ListItem>
                <asp:ListItem>Avakado</asp:ListItem>
                <asp:ListItem Selected="True">Ananas</asp:ListItem>
                <asp:ListItem>Muz</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Beni seviyor musun?" />
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Fenerbahçe</asp:ListItem>
                <asp:ListItem>Galatasaray</asp:ListItem>
                <asp:ListItem>Beşiktaş</asp:ListItem>
                <asp:ListItem>Başakşehir Spor</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>İstanbul</asp:ListItem>
                <asp:ListItem>Konya</asp:ListItem>
                <asp:ListItem>İzmir</asp:ListItem>
                <asp:ListItem>Trabzon</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:HiddenField ID="HiddenField1" runat="server" Value="15" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.google.com">Google</asp:HyperLink>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/resimler/At.jpg" />
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/resimler/At.jpg" />
            <br />
            <br />
            <br />
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/resimler/gezegenler.jpg" Width="1000px">
                <asp:CircleHotSpot NavigateUrl="http://www.google.com" Radius="42" Target="_blank" X="626" Y="118" />
            </asp:ImageMap>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="#000099" Text="Kayıt tamamlanmıştır."></asp:Label>
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
            <br />
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>Maydanoz</asp:ListItem>
                <asp:ListItem>Tere</asp:ListItem>
                <asp:ListItem>Soğan</asp:ListItem>
                <asp:ListItem>Marul</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <br />
            <asp:Literal ID="Literal1" runat="server" Text="Merhaba, ben literalim"></asp:Literal>
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </asp:Panel>

            <asp:Table ID="Table1" runat="server"></asp:Table>
        </div>
    </form>
</body>
</html>
