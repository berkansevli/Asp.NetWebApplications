<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="OgrenciKayit.aspx.cs" Inherits="FirstMasterPage.Yonetim.OgrenciKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-edit"></i>Öğrenci Kayıt</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Öğrenci bilgilerini giriniz</legend>
                        <div class="control-group">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="typeahead">Adı Soyadı</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAdiSoyadi" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdiSoyadi" ErrorMessage="Adı Soyadı Boş Geçilemez" ForeColor="Red"><img src="img/uyari.png" width="32" /></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">TC Kimlik No</label>
                            <div class="controls">
                                <asp:TextBox ID="txtTCKimlikNo" runat="server"></asp:TextBox>
                            </div>
                        </div>                       
                        <div class="control-group">
                            <label class="control-label" for="textarea2">Öğrenci Numarası</label>
                            <div class="controls">
                                <asp:TextBox ID="txtOgrenciNo" runat="server"></asp:TextBox>
                                <p class="help-block">Öğrenci numarası aynı zamanda kullanıcı adı olarak kullanılır.</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea2">Doğum Yeri</label>
                            <div class="controls">
                                <asp:TextBox ID="txtDogumYeri" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="control-group">
                            <label class="control-label" for="fileInput">Doğum Tarihi</label>
                            <div class="controls">
                                <asp:TextBox ID="txtDogumTarihi" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="control-group">
                            <label class="control-label" for="fileInput">Telefon1</label>
                            <div class="controls">
                                <asp:TextBox ID="txtTelefon1" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="control-group">
                            <label class="control-label" for="fileInput">Telefon2</label>
                            <div class="controls">
                                <asp:TextBox ID="txtTelefon2" runat="server"></asp:TextBox>
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
</asp:Content>
