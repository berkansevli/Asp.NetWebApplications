<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="DersOgrenciEkle.aspx.cs" Inherits="FirstMasterPage.Yonetim.DersOgrenciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-edit"></i>Ders Öğrenci Kayıt</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Ders ve Öğrenci bilgilerini giriniz</legend>
                        <div class="control-group">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="typeahead">Ders Adı</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlDersler" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Öğrenci Adı</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlOgrenciler" runat="server"></asp:DropDownList>
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
