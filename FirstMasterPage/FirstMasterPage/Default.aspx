<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FirstMasterPage.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flexslider">
        <ul class="slides">
            <li><a href="#">
                <img src="images/flexslider/3.jpg" alt="" /></a> </li>
            <li>
                <img src="images/flexslider/6.jpg" alt="" />
            </li>
            <li><a href="#">
                <img src="images/flexslider/4.jpg" alt="" /></a>
                <p class="flex-caption">Welcome to Proximet Site. This is example of the Caption Title.</p>
            </li>
        </ul>
    </div>
    <!-- Home Content Part - Box One ==================================================
================================================== -->
    <div class="blankSeparator"></div>
    <div class="container">
        <div class="info">
            <div class="one_third">
                <h2>New Freebie</h2>
                <p>Proximet is my latest <span class="red">responsive</span> Site Template freebie. Proximet Template is simple and clean template with a lot attention to detail. It is suitable for a lot of <span class="green">different</span> business and private uses.</p>
                <a href="http://themeforest.net/item/positivo-responsive-and-fresh-wp-theme/2700306?ref=anariel7" title="" class="buttonhome">&rarr; download</a>
            </div>
            <div class="two_third lastcolumn">
                <div class="one_half">
                    <h2>Portfolio News</h2>
                    <p>Proximet is my latest <span class="red">responsive</span> Site Template freebie. Proximet Template is simple and clean template with a lot attention to detail. It is suitable for a lot of <span class="green">different</span> business and private uses.</p>
                    <a href="http://themeforest.net/item/positivo-responsive-and-fresh-wp-theme/2700306?ref=anariel7" title="" class="buttonhome">&rarr; download</a>
                </div>
                <div class="one_half lastcolumn">
                    <h2>Proximet News</h2>
                    <p>Proximet is my latest <span class="red">responsive</span> Site Template freebie. Proximet Template is simple and clean template with a lot attention to detail. It is suitable for a lot of <span class="green">different</span> business and private uses.</p>
                    <a href="http://themeforest.net/item/positivo-responsive-and-fresh-wp-theme/2700306?ref=anariel7" title="" class="buttonhome">&rarr; download</a>
                </div>
            </div>
        </div>
    </div>
    <!-- container ends here -->
    <!-- Home Content Part - Box Two ==================================================
================================================== -->
    <div class="container clients">
        <div class="sepContainer"></div>
        <h2>Our Clients</h2>
        <div class="one_sixth">
            <img src="images/client1.jpg" alt="" />
        </div>
        <!-- end one_sixth -->
        <div class="one_sixth">
            <img src="images/client2.jpg" alt="" />
        </div>
        <!-- end one_sixth -->
        <div class="one_sixth">
            <img src="images/client3.jpg" alt="" />
        </div>
        <!-- end one_sixth -->
        <div class="one_sixth">
            <img src="images/client4.jpg" alt="" />
        </div>
        <!-- end one_sixth -->
        <div class="one_sixth">
            <img src="images/client5.jpg" alt="" />
        </div>
        <!-- end one_sixth -->
        <div class="one_sixth lastcolumn">
            <img src="images/client6.jpg" alt="" />
        </div>
        <!-- end one_sixth lastCol -->
    </div>
    <!-- end container -->
    <!-- Home Content Part - Box Three ==================================================
================================================== -->
    <div class="container boxthree">
        <div class="sepContainer1">
            <!-- -->
        </div>
        <div class="blankSeparator"></div>
        <div class="one_third">
            <section class="boxthreeleft">
                <img src="images/home/1.png" alt="" />
                <h3>Natural beauty</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                <a class="simple" href="#">+ Learn more</a>
            </section>
        </div>
        <!-- one-third column ends here -->
        <div class="one_third">
            <section class="boxthreecenter">
                <img src="images/home/2.png" alt="" />
                <h3>Fashion Love</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                <a class="simple" href="#">+ Learn more</a>
            </section>
        </div>
        <!-- one-third column ends here -->
        <div class="one_third lastcolumn">
            <section class="boxthreeright">
                <img src="images/home/3.png" alt="" />
                <h3>Modern Design Interior</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                <a class="simple" href="#">+ Learn more</a>
            </section>
        </div>
        <!-- one-third column ends here -->
    </div>
    <!-- container ends here -->
</asp:Content>
