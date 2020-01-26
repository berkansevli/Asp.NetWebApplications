<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="FirstMasterPage.Yonetim.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-edit"></i>Ders Kayıt</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Ders bilgilerini giriniz</legend>
                        <div class="control-group">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="typeahead">Ders Adı</label>
                            <div class="controls">
                                <asp:TextBox ID="txtDersAdi" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDersAdi" ErrorMessage="Ders Adı Boş Geçilemez" ForeColor="Red"><img src="img/uyari.png" width="32" /></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Açıklama</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAciklama" runat="server"></asp:TextBox>
                            </div>
                        </div>                       
                        
                        <div class="form-actions">
                            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="btnKaydet_Click" />
                            <asp:Label ID="lblDurum" runat="server" Text=""></asp:Label>
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->


    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-user"></i>Dersler</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th>Ders Adı</th>
                            <th>Açıklama</th>
                            <th>İşlem</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptDersler" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("DersAdi") %></td>
                                    <td class="center"><%#Eval("Aciklama") %></td>
                                    <td class="center">
                                        <a class="btn btn-success" href="DersOgrenciEkle.aspx">
                                            <i class="icon-zoom-in icon-white"></i>
                                            Öğrenci Ekle
                                        </a>
                                        <a class="btn btn-info" href="">
                                            <i class="icon-edit icon-white"></i>
                                            Düzelt                                            
                                        </a>
                                        <a class="btn btn-danger" href="DersEkle.aspx?s=<%#Eval("DersID") %>">
                                            <i class="icon-trash icon-white"></i>
                                            Sil
                                        </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>
        </div>
        <!--/span-->

    </div>
</asp:Content>
