<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ogrenciler.aspx.cs" Inherits="FirstMasterPage.Yonetim.Ogrenciler" %>

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
                            <th>Adı Soyadı</th>
                            <th>TC Kimlik No</th>
                            <th>Öğrenci No</th>
                            <th>Doğum Tarihi</th>
                            <th>Doğum Yeri</th>
                            <th>Telefon1</th>
                            <th>Telefon2</th>
                            <th>İşlem</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptOgrenciler" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("AdiSoyadi") %></td>
                                    <td class="center"><%#Eval("TCKimliKNo") %></td>
                                    <td class="center"><%#Eval("OgrenciNo") %></td>
                                    <td class="center">
                                        <%#Eval("DogumTarihi") %>
                                    </td>
                                    <td class="center">
                                        <%#Eval("DogumYeri") %>
                                    </td>
                                    <td class="center">
                                        <%#Eval("Telefon1") %>
                                    </td>
                                    <td class="center">
                                        <%#Eval("Telefon2") %>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="OgrenciDetayEkle.aspx?id=<%# Eval("OgrenciID") %>">
                                            <i class="icon-zoom-in icon-white"></i>
                                            Detay Ekle
                                        </a>
                                        <a class="btn btn-info" href="OgrenciKayit.aspx?id=<%#Eval("OgrenciID") %>">
                                            <i class="icon-edit icon-white"></i>
                                            Düzelt                                            
                                        </a>
                                        <a class="btn btn-danger" href="Ogrenciler.aspx?s=<%#Eval("OgrenciID") %>">
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
    <!--/row-->
</asp:Content>
