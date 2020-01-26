<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="OgrenciDetayEkle.aspx.cs" Inherits="FirstMasterPage.Yonetim.OgrenciDetayEkle" %>

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
                                <asp:Literal ID="ltrAdiSoyadi" runat="server"></asp:Literal>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Adres</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea2">Anne Adı</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAnneAdi" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea2">Baba Adı</label>
                            <div class="controls">
                                <asp:TextBox ID="txtBabaAdi" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="fileInput">Kan Grubu</label>
                            <div class="controls">
                                <asp:TextBox ID="txtKanGrubu" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="fileInput">En Son Mezun Olduğu Okul</label>
                            <div class="controls">
                                <asp:TextBox ID="txtEnSonMezunOlduguOkul" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="fileInput">Mezuniyet Notu</label>
                            <div class="controls">
                                <asp:TextBox ID="txtMezuniyetNotu" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="fileInput">Kronik Hastalık Durumu</label>
                            <div class="controls">
                                <asp:CheckBox ID="cbKronikHastalik" runat="server" Text="Var" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="fileInput">Engel Durumu</label>
                            <div class="controls">
                                <asp:CheckBox ID="cbEngelDurumu" runat="server" Text="Var" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="fileInput">Acil Durumda Aranacak No</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAcilDurumNo" runat="server"></asp:TextBox>
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
