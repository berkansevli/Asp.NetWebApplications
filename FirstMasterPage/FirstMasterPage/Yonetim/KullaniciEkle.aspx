﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="KullaniciEkle.aspx.cs" Inherits="FirstMasterPage.Yonetim.KullaniciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-edit"></i>Kullanıcı Kayıt</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Kullanıcı bilgilerini giriniz</legend>
                        <div class="control-group">
                            <label class="control-label" for="typeahead">Kullanıcı Adı</label>
                            <div class="controls">
                                <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullaniciAdi" ErrorMessage="*" ForeColor="Red"><img src="img/uyari.png" width="32" /></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="typeahead">Şifre</label>
                            <div class="controls">
                                <asp:TextBox ID="txtSifre" runat="server"  TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" ErrorMessage="*" ForeColor="Red"><img src="img/uyari.png" width="32" /></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Adı Soyadı</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAdiSoyadi" runat="server"></asp:TextBox>
                            </div>
                        </div>    
                        <div class="control-group">
                            <label class="control-label">Fotoğraf</label>
                            <div class="controls">
                                <asp:FileUpload ID="fuFotograf" runat="server" /><asp:HiddenField ID="hfFotograf" runat="server" />
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
</asp:Content>
