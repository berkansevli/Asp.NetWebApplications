<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kullanicilar.aspx.cs" Inherits="FirstMasterPage.Yonetim.Kullanicilar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-user"></i>Members</h2>
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
                            <th>Fotoğraf</th>
                            <th>Adı Soyadı</th>
                            <th>Kullanıcı Adı</th>
                            <th>Şifre</th>
                            <th>İşlem</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptKullanicilar" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><img src="../Uploads/Kullanicilar/<%#Eval("Fotograf") %>" onerror="this.src='../Uploads/Kullanicilar/noimg.png'" width="150" height="150" /></td>
                                    <td class="center"><%#Eval("AdiSoyadi") %></td>
                                    <td class="center"><%#Eval("KullaniciAdi") %></td>
                                    <td class="center">
                                        *****
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-info" href="KullaniciEkle.aspx?id=<%#Eval("KullaniciID") %>">
                                            <i class="icon-edit icon-white"></i>
                                            Düzelt                                            
                                        </a>
                                        <a class="btn btn-danger" href="Kullanicilar.aspx?s=<%#Eval("KullaniciID") %>">
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
