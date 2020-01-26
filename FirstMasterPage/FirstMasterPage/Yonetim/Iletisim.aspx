<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="FirstMasterPage.Yonetim.Iletisim" %>
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
                            <th>EPosta</th>
                            <th>Yaş</th>
                            <th>Konu</th>
                            <th>Mesaj</th>
                            <th>Tarih</th>
                            <th>IP Adres</th>
                            <th>Durum</th>
                            <th>İşlem</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptIletisim" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("AdiSoyadi") %></td>
                                    <td class="center"><%#Eval("EPosta") %></td>
                                    <td class="center"><%#Eval("Yas") %></td>
                                    <td class="center">
                                        <%#Eval("Konu") %>
                                    </td>
                                    <td class="center">
                                        <%#Eval("Mesaj") %>
                                    </td>
                                     <td class="center">
                                        <%#Eval("Tarih") %>
                                    </td>
                                     <td class="center">
                                        <%#Eval("IPAdres") %>
                                    </td>
                                     <td class="center">
                                         <span class="label label-<%#Eval("OkunduMu").ToString()=="True"?"success":"important" %>"><%#Eval("OkunduMu").ToString()=="True"?"Okundu":"Okunmadı" %></span>
                                    
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-<%#Eval("OkunduMu").ToString()=="True"?"warning":"success" %>" href="iletisim.aspx?okundu=<%# Eval("IletisimID") %>&durum=<%#Eval("OkunduMu") %>">
                                            <i class="icon-zoom-in icon-white"></i>
                                            <%#Eval("OkunduMu").ToString()=="True"?"Okunmadı":"Okundu" %>
                                        </a>
                                        <a class="btn btn-danger" href="iletisim.aspx?s=<%#Eval("IletisimID") %>">
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
