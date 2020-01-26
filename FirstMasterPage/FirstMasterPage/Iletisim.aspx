<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="FirstMasterPage.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contact Content Part - GoogleMap ==================================================
================================================== -->
    <section class="map">
        <!-- google map -->
        <div class="map-holder">
            <div class="map-container">
                <iframe class="map" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Munich,+Germany&amp;aq=0&amp;oq=M%C3%BCnchen&amp;sll=37.0625,-95.677068&amp;sspn=53.212719,135.263672&amp;ie=UTF8&amp;hq=&amp;hnear=Munich,+Upper+Bavaria,+Bavaria,+Germany&amp;t=m&amp;ll=48.23565,11.596069&amp;spn=0.347588,2.635345&amp;z=10&amp;iwloc=A&amp;output=embed"></iframe>
                <!-- end google map -->
            </div>
            <!--map-container ends here-->
        </div>
        <!--map-holder ends here-->
    </section>

    <!-- Contact Content Part - Contact Form ==================================================
================================================== -->
    <div class="container">
        <div class="blankSeparator"></div>
        <!-- Contact Sidebar ==================================================
================================================== -->
        <div class="one_third contactsidebar">
            <section class="first">
                <h3>Adres</h3>
                <div class="boxtwosep"></div>
                <ul class="contactsidebarList">
                    <li>123456 Street Name, London</li>
                    <li>Phone: (1800) 987-12341</li>
                    <li>Fax: (1800) 987-12341</li>
                    <li>Website: <a href="#" title="">http://yoursitename.com</a></li>
                    <li>Email: <a href="#" title="">info@proximet.com</a></li>
                </ul>
            </section>
            <section class="third">
                <h3>Latest Offers</h3>
                <div class="boxtwosep"></div>
                <h5><span class="color">40%</span> Sale &rsaquo;&rsaquo; Love Fashion</h5>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</p>
            </section>
        </div>
        <!-- one_third ends here -->
        <div class="two_third lastcolumn contact1">
            <div id="contactForm">
                <h2>Leave a comment</h2>
                <div class="sepContainer"></div>
                 <div id="contact_form">
                    <div class="name">
                        <label for="txtAdiSoyadi">Adınız Soyadınız</label>
                        <asp:TextBox ID="txtAdiSoyadi" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtAdiSoyadi"></asp:RequiredFieldValidator>
                    </div>
                    <div class="email">
                        <label for="txtEPosta">E-Posta </label>
                        <asp:TextBox ID="txtEPosta" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtEPosta"></asp:RequiredFieldValidator>
                    </div>
                    <div class="email">
                        <label for="email">E-Posta Tekrar </label>
                        <asp:TextBox ID="txtEpostaTekrar" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ControlToCompare="txtEPosta" ControlToValidate="txtEpostaTekrar"></asp:CompareValidator>
                    </div>
                    <div class="message">
                        <label for="message">Yaşınız</label>
                        <p>İletişim Formunu doldurmak için +18 olmanız gerekmektedir.</p>
                        <asp:TextBox ID="txtYas" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*" MinimumValue="18" MaximumValue="99" Type="Integer" ControlToValidate="txtYas"></asp:RangeValidator>
                    </div>
                    <div class="email">
                        <label for="email">Konu </label>
                        <asp:TextBox ID="txtKonu" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtKonu"></asp:RequiredFieldValidator>
                    </div>
                    <div class="message">
                        <label for="message">Mesaj</label>
                        <asp:TextBox ID="txtMesaj" TextMode="MultiLine" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtMesaj"></asp:RequiredFieldValidator>
                    </div>
                    <div id="loader">
                        <asp:Button ID="btnGonder" runat="server" Text="Gönder" OnClick="btnGonder_Click" /><asp:Literal ID="ltrDurum" runat="server"></asp:Literal>
                    </div>
                </div>
            </div>
            <!-- end contactForm -->
        </div>
    </div>
    <div class="blankSeparator2"></div>
</asp:Content>
