<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>City Business Theme</title>

    <!-- Style CSS -->
    <link rel="stylesheet" href="css/grid/main.css"/>

    <!-- Google Font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Mate+SC' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Marvel' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Pinyon+Script' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Cabin:400italic' rel='stylesheet'>

    <!-- JS Min -->
    <script src="js/jquery.min.js"></script>
    <script src="js/general.js"></script>

    <!-- JS Theme Style -->
    <script>
        if (document.layers) {
            document.write('<link rel=stylesheet href="css/style/style.css">')
        }
        else {
            document.write('<link rel=stylesheet href="css/style/style.css">')
        }
        if (document.layers) {
            document.write('<link rel=stylesheet href="css/color/default.css">')
        }
        else {
            document.write('<link rel=stylesheet href="css/color/default.css">')
        }
        if (document.layers) {
            document.write('<link rel=stylesheet href="css/app/supersized.css">')
        }
        else {
            document.write('<link rel=stylesheet href="css/app/supersized.css">')
        }
        if (document.layers) {
            document.write('<link rel=stylesheet href="css/app/hover_effects.css">')
        }
        else {
            document.write('<link rel=stylesheet href="css/app/hover_effects.css">')
        }
        if (document.layers) {
            document.write('<link rel=stylesheet href="./fancybox/jquery.fancybox-1.3.4.css">')
        }
        else {
            document.write('<link rel=stylesheet href="./fancybox/jquery.fancybox-1.3.4.css">')
        }
    </script>

    <!--[if lt IE 10]>
    <link rel="stylesheet" href="css/app/hover_effects_ie.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="css/style/ie9.css" type="text/css" media="screen"/>
    <![endif]-->

    <script src="./fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
    <script src="./fancybox/jquery.fancybox-1.3.4.pack.js"></script>
    <script type="text/javascript" src="js/framework.js"></script>

</head>
<body>
<%@include file="/commons/theme.html" %>

<!-- Container Start-->
<div class="container_16" style="padding-left:15px;">

    <div id="topdot" class="grid_16 margin"></div>

    <!-- Top Menu -->
    <div class="grid_16 margin">
        <div id="topmenu">
            <ul>
                <li><a id="contactline1" href="#contactline"><img src="image/icon/mail.png" alt=""></a></li>
                <li><a id="contactline2" href="#contactadress"><img src="image/icon/phone.png" alt=""></a></li>
                <li><input name="Search" type="text" value="Search:" onfocus="if(this.value=='Search:')this.value='';"
                           onblur="if(this.value=='')this.value='Search:';"/></li>
            </ul>
            <!-- Popup Contact Form -->
            <div class="dnone">
                <div id="contactline" class="popupcontact">
                    <h1>Contact Form</h1>
                    <form>
                        <fieldset><input name="Name" type="text" value="Name:"
                                         onfocus="if(this.value=='Name:')this.value='';"
                                         onblur="if(this.value=='')this.value='Name:';"/></fieldset>
                        <fieldset><input name="Mail" type="text" value="E-Mail:"
                                         onfocus="if(this.value=='E-Mail:')this.value='';"
                                         onblur="if(this.value=='')this.value='E-Mail:';"/></fieldset>
                        <fieldset><input name="Web" type="text" value="Web:"
                                         onfocus="if(this.value=='Web:')this.value='';"
                                         onblur="if(this.value=='')this.value='Web:';"/></fieldset>
                        <fieldset><textarea name="Message" onfocus="if(this.value=='Message:')this.value='';"
                                            onblur="if(this.value=='')this.value='Message:';">Message:</textarea>
                        </fieldset>
                        <fieldset><input type="submit" value="Send"/></fieldset>
                    </form>
                </div>
            </div>
            <!-- Popup Contact Adress -->
            <div class="dnone">
                <div id="contactadress" class="popupcontact">
                    <h1>City Adress Detail</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                        the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                        of type and scrambled it to make a type specimen book.</p>
                    <h5>Telephone:</h5>
                    <p>(+90) 555 444 333 PBX </p>
                    <h5>Fax:</h5>
                    <p>(+90) 555 444 333 PBX </p>
                    <h5>E-Mail:</h5>
                    <p>johndo@domain.com</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Navigation Start-->
    <div id="navigation" class="grid_16 margin">

        <!-- #Logo-->
        <div class="grid_4 logo margin">
            <a href="#"><img src="image/theme/logo.png" alt=""></a>
        </div>
        <jsp:include page="/commons/top.html"/>

        <!-- #Page Back -->
        <div id="pageback"></div>
        <div id="tabback2"></div>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                jQuery("#hide").hide();
            });

            function get(id) {
                jQuery("#hide").show(1500);
                jQuery.ajax({
                    type: "POST",
                    url: 'album!listOne',
                    cache: false,
                    async: true,
                    data: {
                        id: id
                    },
                    success: function (data) {
                        jQuery("#photos").html("");
                        jQuery(data).find("keys").children().each(function () {
                            jQuery("#photos").append("<div class='overlay_fade' style='padding:3'><a class='team' href='" + jQuery(this).text() + "'><div class='overlay_zoom zoom_black'></div></a><img src='" + jQuery(this).text() + "' alt='' width='300' height='200' class='three-columb-img portfolioul-li-img' /></div>");
                        });
                        jQuery("#add").val(id);
                    }
                });


            }
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".sysName").load("commons/sysName.txt", function (data, x) {
                    document.title = data;
                });
            });
        </script>
        <div class="grid_16 margin">
            <div id="tabmenuback2"></div>
            <div class="bigtitle">
                <h1><font class="sysName"></font>会员<s:property value="#user.username"/>的相册</h1>
                <h2>My Album</h2>
            </div>
        </div>
        <!-- Clear -->
        <div class="clear margin5"></div>
        <br>
        <form action="album!add">
            添加新相册：<input type="text" name="name">
            <input type="submit" value="添加">
        </form>
        <div id="listportfolio" class="grid_16">

            <!-- Filter Menu -->
            <div class="filter">
                <ul>
                    <li class="current"><a href="album!listAll">所有照片</a></li>
                    <s:iterator value="#albums">
                        <li><a href="javascript:get(<s:property value='id' />)"><s:property value="name"/></a></li>
                    </s:iterator>
                    <br>
                    <br>
                    <br>

                    <form action="album!addPhoto" id="hide" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="id" id="add" "/>
                        添加图片：<input type="file" name="photo">
                        <input type="submit" value="添加">
                    </form>

                    <form action="album!delete" id="deleteForm" method="post">
                        <input type="hidden" name="id" id="deleteid"/>
                        <input type="button" value="删除相册" onclick="deleteAlbum();">
                    </form>

                    <form action="album!update" id="updateForm" method="post">
                        <input type="hidden" name="id" id="updateid"/>
                        <input type="text" name="name">
                        <input type="button" value="修改相册名称" onclick="updateAlbum();" />
                    </form>


                    <script !src="">
                        function deleteAlbum(){
                            var id = document.getElementById("add").value;
                            document.getElementById("deleteid").value = id;
                            document.getElementById("deleteForm").submit();
                        }

                        function updateAlbum(){
                            var id = document.getElementById("add").value;
                            document.getElementById("updateid").value = id;
                            document.getElementById("updateForm").submit();
                        }
                    </script>

                    <br>
                    <div id="photos">
                        <s:iterator value="#albums" var="album">
                            <s:iterator value="photos" var="s">
                                <div class="overlay_fade" style="padding:3"><a class="team"
                                                                               href="<s:property value="s" />">
                                    <div class="overlay_zoom zoom_black"></div>
                                </a><img src="<s:property value="s" />" alt="" width="300" height="200"
                                         class="three-columb-img portfolioul-li-img"/></div>
                            </s:iterator>
                        </s:iterator>
                    </div>


                </ul>
            </div>


        </div>

        <!-- Clear-->
        <div class="clear"></div>

        <!-- Advert Start -->
        <div id="advert" class="grid_16 advert">
            <div id="advertback"></div>
            <div class="margin3 fleft"><a href="#" class="minibutton margin8">1</a> <a href="#"
                                                                                       class="minibutton-black margin8">2</a>
                <a href="#" class="minibutton-black margin8">3</a> <a href="#" class="minibutton-black margin8">4</a> <a
                        href="#" class="minibutton-black margin8">></a></div>
            <div class="margin3 fright"><a href="#" class="minibutton margin8">Prev</a> <a href="#" class="minibutton">Next</a>
            </div>
        </div>
        <!-- Advert End -->

        <!-- Clear-->
        <div class="clear"></div>


        <!-- What Says Our Company -->
        <div class="grid_8 margin leftsays">
            <div id="full-bottom"></div>
            <div class="title-2cloumb">
                <h1>Populer Portfolio Post</h1>
                <p>Lorem ipsum is simply data text</p>
            </div>
            <div class="leftcloumb-list">
                <ul>
                    <li>
                        <div class="margin4 fright"><a href="#" class="minibutton2">More</a></div>
                        <img src="image/post/l1.png" alt="" class="leftcloumb-list-img">
                        <h1>Duis Vitae Mauris Eu Neque Elementum</h1>
                        <p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit
                            amet.</p></li>
                    <li>
                        <div class="margin4 fright"><a href="#" class="minibutton2">More</a></div>
                        <img src="image/post/l2.png" alt="" class="leftcloumb-list-img">
                        <h1>Morbi Mauris Ligula</h1>
                        <p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit
                            amet.</p></li>
                    <li>
                        <div class="margin4 fright"><a href="#" class="minibutton2">More</a></div>
                        <img src="image/post/l3.png" alt="" class="leftcloumb-list-img">
                        <h1>Sed Eget Adipiscing Eros Habitasse</h1>
                        <p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit
                            amet.</p></li>
                </ul>
            </div>
        </div>
        <!-- What Says Our Company End -->

        <!-- Bigg Boss -->
        <div class="grid_8 margin">
            <div class="title-2cloumb">
                <h1>Latest Portfolio Post</h1>
                <p>Lorem ipsum is simply printing swith data text</p>
            </div>
            <div class="bussiness-boss">
                <img src="image/post/lbig.png" class="bussiness-boss-img" alt="">
                <div class="bussiness-shadow"><img src="image/theme/bigshadow2.png" alt=""></div>
                <h1>Micheal Smith Fisher:</h1>
                <p>"Phasellus dapibus rutrum mi, sed elementum felis placerat ac. Aenean gravida elementum arcu non
                    ultrices. Proin pharetra ipsum vitae augue dignissim pharetra. Maecenas turpis leo, dignissim a
                    elementum id, feugiat eget leo. Ut vitae neque aliquam orci blandit elementum eu id nibh. Class
                    aptent taciti sociosqu ad litora."</p>
            </div>
        </div>
        <!-- Bigg Boss End -->

        <!-- Clear-->
        <div class="clear"></div>

        <div id="company-logo" class="grid_16">
            <div id="tabback"></div>
            <div id="tabmenuback"></div>
            <div id="logo-list">
                <script src="js/portfolio.js"></script>
                <div id="ps_slider" class="ps_slider" style="margin-top:32px;">
                    <a class="prev disabled"></a>
                    <a class="next disabled"></a>
                    <div id="ps_albums" class="logolist">
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_01.jpeg" class="logolist-img" alt=""></a>
                        </div>
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_02.jpeg" class="logolist-img" alt=""></a>
                        </div>
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_03.jpeg" class="logolist-img" alt=""></a>
                        </div>
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_04.jpeg" class="logolist-img" alt=""></a>
                        </div>
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_05.jpeg" class="logolist-img" alt=""></a>
                        </div>
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_06.jpeg" class="logolist-img" alt=""></a>
                        </div>
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_07.jpeg" class="logolist-img" alt=""></a>
                        </div>
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_08.jpeg" class="logolist-img" alt=""></a>
                        </div>
                        <div class="ps_album">
                            <a class="team" href="image/post/bigimage.png"
                               title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
                                    src="image/post/logo_09.jpeg" class="logolist-img" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Clear-->
        <div class="clear"></div>

    </div>
    <!-- Container End-->

    <!-- Clear-->
    <div class="clear"></div>

    <!-- Footer 1 Start -->
    <div id="footer1-back">
        <div class="container_16">
            <div class="grid_16 margin">
                <!-- Widget Categories-->
                <div class="footercategories margin">
                    <h2>Blog or Page CategorIes</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing </p>
                    <ul>
                        <li><a href="#">Portfolio</a></li>
                        <li><a href="#">Company News</a></li>
                        <li><a href="#">Services Options</a></li>
                        <li><a href="#">Team Blog</a></li>
                        <li><a href="#">Who Are We</a></li>
                        <li><a href="#">People Says</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <!-- Latest Portfolio -->
                <div class="footerportfolio margin">
                    <h2>Latest PortfolIo Items</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing </p>
                    <ul>
                        <li><a href="#"><img src="image/post/p1.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p2.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p3.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p4.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p5.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p6.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p7.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p8.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p9.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p10.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p11.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p12.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p13.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p14.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p15.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p16.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p17.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p18.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p19.png" alt=""></a></li>
                        <li><a href="#"><img src="image/post/p20.png" alt=""></a></li>
                    </ul>
                    <div class="footerportfolio-button"><a href="#" class="middlebutton">Portfolio</a></div>
                </div>
                <!-- Social Widget -->
                <div class="footersocial margin">
                    <h2>SocIal Platform Of CIty</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing </p>
                    <div class="twittermessage">
                        <div class="footertwitter">
                            <p>鈥淟orem Ipsum is text of dummy printing setting data lorem Ipsum is text of dummy printing
                                setting data. text of鈥�/p>
                        </div>
                        <div class="twitterbird"><img src="image/icon/twitterbird.png" alt=""></div>
                    </div>
                    <div class="footerothermedia">
                        <p>Others Social Media</p>
                        <ul>
                            <li><a href="#"><img src="image/icon/s1.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s2.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s3.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s4.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s5.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s6.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s7.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s8.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s9.png" alt=""></a></li>
                            <li><a href="#"><img src="image/icon/s10.png" alt=""></a></li>
                        </ul>
                        <div class="footersocial-button"><a href="#" class="middlebutton">Contact</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Clear-->
    <div class="clear"></div>

    <!-- Footer 2 Start -->
    <div id="footer2-back">
        <div class="container_16">
            <div class="grid_16 footerregister margin">
                <p>Copright 漏 2012 City Themes iamthemes.com. All rights reserved. W3C standart web site valid xjsp and
                    css</p>
                <p>Design by Mithat Sigmaz / <a href="http://www.cubegraphic.net">CUBE GRAPHIC</a> - Code by IAMILKAY /
                    <a href="http://www.iamthemes.com">IAMTHEMES</a></p>
            </div>
        </div>
    </div>

</body>
</html>

<script type="javascript">

</script>