<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta charset="UTF-8">
<title>City Business Theme</title>

<!-- Style CSS -->
<link rel="stylesheet" href="css/grid/main.css" />

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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="js/general.js"></script>

<!-- JS Theme Style -->
<script>
if (document.layers) { document.write('<link rel=stylesheet href="css/style/style.css">') } 
else { document.write('<link rel=stylesheet href="css/style/style.css">') }
if (document.layers) { document.write('<link rel=stylesheet href="css/color/default.css">') } 
else { document.write('<link rel=stylesheet href="css/color/default.css">') }
if (document.layers) { document.write('<link rel=stylesheet href="css/app/supersized.css">') } 
else { document.write('<link rel=stylesheet href="css/app/supersized.css">') }
if (document.layers) { document.write('<link rel=stylesheet href="css/app/hover_effects.css">') } 
else { document.write('<link rel=stylesheet href="css/app/hover_effects.css">') }
if (document.layers) { document.write('<link rel=stylesheet href="./fancybox/jquery.fancybox-1.3.4.css">') } 
else { document.write('<link rel=stylesheet href="./fancybox/jquery.fancybox-1.3.4.css">') }
</script>

<!--[if lt IE 10]>
<link rel="stylesheet" href="css/app/hover_effects_ie.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/style/ie9.css" type="text/css" media="screen" />
<![endif]-->

<script src="./fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script src="./fancybox/jquery.fancybox-1.3.4.pack.js"></script>

</head>
<body>

<!-- Container Start-->
<div class="container_16" style="padding-left:15px;">
	
    <div id="topdot" class="grid_16 margin"></div>
    
    <!-- Top Menu -->
    <div class="grid_16 margin">
      <div id="topmenu">
      	<ul>
        	<li><a id="contactline1" href="#contactline"><img src="image/icon/mail.png" alt=""></a></li>
            <li><a id="contactline2" href="#contactadress"><img src="image/icon/phone.png" alt=""></a></li>
            <li><input name="Search" type="text" value="Search:" onfocus="if(this.value=='Search:')this.value='';" onblur=	"if(this.value=='')this.value='Search:';"/></li>
        </ul>
        <!-- Popup Contact Form -->
        <div  class="dnone">
          <div id="contactline" class="popupcontact">
              <h1>Contact Form</h1>
              <form>
              <fieldset><input name="Name" type="text" value="Name:" onfocus="if(this.value=='Name:')this.value='';" onblur=	"if(this.value=='')this.value='Name:';"/></fieldset>  
              <fieldset><input name="Mail" type="text" value="E-Mail:" onfocus="if(this.value=='E-Mail:')this.value='';" onblur=	"if(this.value=='')this.value='E-Mail:';"/></fieldset>
              <fieldset><input name="Web" type="text" value="Web:" onfocus="if(this.value=='Web:')this.value='';" onblur=	"if(this.value=='')this.value='Web:';"/></fieldset>
              <fieldset><textarea name="Message" onfocus="if(this.value=='Message:')this.value='';" onblur=	"if(this.value=='')this.value='Message:';">Message:</textarea></fieldset>
              <fieldset><input type="submit" value="Send" /></fieldset>
              </form>
          </div>
		</div>
        <!-- Popup Contact Adress -->
        <div  class="dnone">
          <div id="contactadress" class="popupcontact">
              <h1>City Adress Detail</h1>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
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
    
    <div class="grid_16 margin">
    	<div id="tabmenuback2"></div>
        <div class="bigtitle">
        	<h1>联系我们</h1>
            <h2>"Maecenas venenatis placerat"</h2>
        </div>
    </div>
    
    <!-- Clear -->
    <div class="clear margin5"></div>
    
    <!-- Blog List -->
    <div class="grid_16 blog-list margin">
        
        <!-- #1 -->
		<script>
        $(function(){						  
        $('#1').bxSlider({
        mode: 'fade',
        captions: false,
        auto: false,
        controls: true
        });
        });	
        </script>
        <div class="bloglisting2">
        	<h1>欢迎提出您的意见</h1>
            <h2>Posted by <a href="#">admin</a>, in <a href="#">news</a> categories, <a href="#">141</a> comments</h2>
        </div>
        
        <!-- Clear -->
    	<div class="clear"></div>
    
        <div class="single-post">
        	<p>
SNS，全称Social Networking Services，即社会性网络服务，专指旨在帮助人们建立社会性网络的互联网应用服务。也指社会现有已成熟普及的信息载体，如短信SMS服务。SNS的另一种常用解释：全称Social Network Site，即“社交网站”或“社交网”。社会性网络（Social Networking）是指个人之间的关系网络，这种基于社会网络关系系统思想的网站就是社会性网络网站(SNS网站)。SNS也指Social Network Software，社会性网络软件，是一个采用分布式技术，通俗地说是采用P2P技术，构建的下一代基于个人的网络基础软件。
SNS网络示意图

  SNS网络示意图
1967年，哈佛大学的心理学教授Stanley Milgram(1933～1984)创立了六度分割理论，简单地说：“你和任何一个陌生人之间所间隔的人不会超过六个，也就是说，最多通过六个人你就能够认识任何一个陌生人。”按照六度分割理论，每个个体的社交圈都不断放大，最后成为一个大型网络。这是社会性网络(Social Networking)的早期理解。后来有人根据这种理论，创立了面向社会性网络的互联网服务，通过“熟人的熟人”来进行网络社交拓展，比如ArtComb,Friendster，Wallop,adoreme等。
但“熟人的熟人”，只是社交拓展的一种方式，而并非社交拓展的全部。因此，现在一般所谓的SNS，则其含义还远不止“熟人的熟人”这个层面。比如根据相同话题进行凝聚（如贴吧）、根据爱好进行凝聚（如Fexion网）、根据学习经历进行凝聚（如Facebook，人人网）、根据周末出游的相同地点进行凝聚等，都被纳入“SNS”的范畴。
</p>
            

        </div>
        
    </div>
    
    <!-- Clear-->
    <div class="clear"></div>
    
    <!-- Advert Start -->
    <div id="advert" class="grid_16 advert">
    	<div id="advertback"></div>
        <div class="margin3 fright"><a href="#" class="minibutton margin8">Prev Page</a> <a href="#" class="minibutton">Next Page</a></div>
    </div>
    <!-- Advert End -->
    
    <!-- Clear-->
    <div class="clear"></div>
    
    <!-- What Says Our Company -->
    <div class="grid_8 margin leftsays">
    	<div id="full-bottom2"></div>
        <div class="title-2cloumb">
        	<h1>The City Adress Detail</h1>
        	<p>Lorem ipsum is simply data text</p>
        </div>
        <div class="leftcloumb-list">
        	<ul>
            	<li><img src="image/icon/a1.png" alt="" class="leftcloumb-list-img"> <h1>Adress:</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
                <li><img src="image/icon/a2.png" alt="" class="leftcloumb-list-img"> <h1>Telephone:</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
                <li><img src="image/icon/a3.png" alt="" class="leftcloumb-list-img"> <h1>E-Mail</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
            </ul>
        </div>    
    </div>
    <!-- What Says Our Company End -->
    
    <!-- Bigg Boss -->
    <div class="grid_8 margin">
    	<div class="title-2cloumb">
        	<h1>Contact Form</h1>
        	<p>Lorem ipsum is simply printing swith data text</p>
        </div>
        <div class="comment-form margin">
            <fieldset><input name="Name" type="text" value="Name:" onfocus="if(this.value=='Name:')this.value='';" onblur=	"if(this.value=='')this.value='Name:';"/></fieldset>  
            <fieldset><input name="Mail" type="text" value="E-Mail:" onfocus="if(this.value=='E-Mail:')this.value='';" onblur=	"if(this.value=='')this.value='E-Mail:';"/></fieldset>
            <fieldset><input name="Web" type="text" value="Web:" onfocus="if(this.value=='Web:')this.value='';" onblur=	"if(this.value=='')this.value='Web:';"/></fieldset>
            <fieldset><textarea name="Message" onfocus="if(this.value=='Message:')this.value='';" onblur=	"if(this.value=='')this.value='Message:';">Message:</textarea></fieldset>
            <div class="fright"><fieldset><input type="submit" value="Send" /></fieldset></div>
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
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_01.jpeg" class="logolist-img" alt=""></a>
                </div>
                <div class="ps_album">
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_02.jpeg" class="logolist-img" alt=""></a>
                </div>
                <div class="ps_album">
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_03.jpeg" class="logolist-img" alt=""></a>
                </div>
                <div class="ps_album">
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_04.jpeg" class="logolist-img" alt=""></a>
                </div>
                <div class="ps_album">
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_05.jpeg" class="logolist-img" alt=""></a>
                </div>
                <div class="ps_album">
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_06.jpeg" class="logolist-img" alt=""></a>
                </div>
                <div class="ps_album">
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_07.jpeg" class="logolist-img" alt=""></a>
                </div>
                <div class="ps_album">
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_08.jpeg" class="logolist-img" alt=""></a>
                </div>
                <div class="ps_album">
                    <a class="team" href="image/post/bigimage.png" title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img src="image/post/logo_09.jpeg" class="logolist-img" alt=""></a>
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
                    <p>鈥淟orem Ipsum is text of dummy printing setting data lorem Ipsum is text of dummy printing setting data.  text of鈥�/p>
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
        	<p>Copright 漏 2012 City Themes iamthemes.com. All rights reserved. W3C standart web site valid xjsp and css</p><p>Design by Mithat Sigmaz / <a href="http://www.cubegraphic.net">CUBE GRAPHIC</a> - Code by IAMILKAY / <a href="http://www.iamthemes.com">IAMTHEMES</a></p>
        </div>
    </div>
</div>

</body>
</html>