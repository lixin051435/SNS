<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
<%@include file="/commons/theme.html"%>
<!-- Container Start-->
<div class="container_16" style="padding-left:15px;">
	
    <div id="topdot" class="grid_16 margin"></div>
    
    <!-- Top Menu -->
    <div class="grid_16 margin" >
      <div id="topmenu">
      	<ul>
        	<li><a id="contactline1" href="#contactline"><img src="image/icon/mail.png" alt=""></a></li>
            <li><a ><img src="image/icon/phone.png" alt=""></a></li>
            <li><input name="Search" type="text" value="Search:" onfocus="if(this.value=='Search:')this.value='';" onblur=	"if(this.value=='')this.value='Search:';"/></li>
        </ul>
        <!-- Popup Contact Form -->
        <div  class="dnone" >
          <div id="contactline" class="popupcontact">
              <h1>好友留言</h1>
              <form action="message!add">
              您想对会员<font color="red"><s:property value="#session.user.username" /></font>说：
              <fieldset><textarea name="message" onfocus="if(this.value=='Message:')this.value='';" onblur=	"if(this.value=='')this.value='Message:';">Message:</textarea></fieldset>
              <fieldset><input type="submit" value="Send" /></fieldset>
              </form>
          </div>
		</div>
        <!-- Popup Contact Adress -->
        <div  class="dnone" >
          <div id="contactadress" class="popupcontact">
              <h1>添加好友</h1>
              <form action="user!addFriends">
              	要添加好友的用户名：<fieldset><input name="username" type="text" value="" onfocus="if(this.value=='')this.value='';" onblur=	"if(this.value=='')this.value='';"/></fieldset>  
          		    验证信息： <fieldset><textarea name="Message" value="" onfocus="if(this.value=='')this.value='';" onblur=	"if(this.value=='')this.value='';"></textarea></fieldset>
              <fieldset><input type="submit" value="发送好友请求" /></fieldset>
              </form>
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
			$(document).ready(function(){
			    $(".sysName").load("commons/sysName.txt",function(data,x){
			    	document.title=data;
			    });	
			});
	</script>   
    <div class="grid_16 margin">
    	<div id="tabmenuback2"></div>
        <div class="bigtitle">
        	<h1>欢迎来到<font class="sysName"></font>会员<s:property value="#session.user.username"/>的日志</h1>
            <h2>Welcome to my log</h2>
        </div>
    </div>
    
    <!-- Clear -->
    <div class="clear margin5"></div>
    
    <!-- Blog List -->
    <div class="grid_11 blog-list margin" style="float:left;width:620">
        
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
        <s:iterator value="#session.blogs">
        <div class="bloglisting">
        	<h1><s:property value="title"/></h1>
            <h2>Posted by <a href="#"><s:property value="author"/></a>, in <a href="#">news</a> categories, <a href="#">141</a> comments</h2>
            
             <s:set name="str" value="descp"></s:set>
            
            <p>
            <s:if test="%{#str.length()>400}">
                     <s:property value="#str.substring(0,400)+'...'" />
           </s:if>
           <s:else>
                       <s:property value="#str" />
           </s:else> 
            </p>
            <div class="margin6 fleft"><a href="blog!updateInput?id=<s:property value="id"/>" class="minibutton">编辑</a></div>
            <div class="margin6 fleft"><a href="blog!delete?id=<s:property value="id"/>" class="minibutton">删除</a></div>
            <div class="margin6 fright"><a href="blog!view?id=<s:property value="id"/>" class="minibutton">阅览此日志</a></div>
            
        </div>
        
        </s:iterator>
        
    </div>
    
    <!-- Sidebar -->
    <div class="grid_5 margin7" style="float:right">
        <!-- #2 -->
        <div class="sidebar-tags">
        	<h2>我的好友</h2>
            <ul>
            	<s:iterator value="#session.friends" var="f">
            	<li><a href='blog!in?id=<s:property value="id"/>'><img width="60" height="60" alt="" src='<s:property value="img"/>'></a></li>
            	</s:iterator>
  
            	
            	<li><a id="contactline2" href="#contactadress">+添加好友</a></li>

            </ul>
        </div>
        
        <!-- #1 -->
        <div class="sidebar-categories">
        	<h2>最近发表</h2>
            <ul>
            	<s:iterator value="#session.blogs" >
            	<li><a href="blog!view?id=<s:property value="id"/>"><s:property value="title"/></a></li>
            	</s:iterator> 

            </ul>
        </div>
        
        
        <!-- #3 -->
        <div class="sidebar-categories">
        	<h2>好友留言</h2>
            <ul>
           <s:iterator value="#session.messages" >
            	<li><a href="#">会员<s:property value="user.username"/>&nbsp;说：<s:property value="message"/></a></li>
            	</s:iterator> 
            </ul>
        </div>
    </div>
    
    <!-- Clear-->
    <div class="clear"></div>
    
    <!-- Advert Start -->
    <div id="advert" class="grid_16 advert">
    	<div id="advertback"></div>
        <div class="margin3 fleft"><a href="#" class="minibutton margin8">1</a> <a href="#" class="minibutton-black margin8">2</a> <a href="#" class="minibutton-black margin8">3</a> <a href="#" class="minibutton-black margin8">4</a> <a href="#" class="minibutton-black margin8">></a></div>
        <div class="margin3 fright"><a href="#" class="minibutton margin8">Prev Post</a> <a href="#" class="minibutton">Next Post</a></div>
    </div>
    <!-- Advert End -->
    
    <!-- Clear-->
    <div class="clear"></div>
    
    
    <!-- What Says Our Company -->
    <div class="grid_8 margin leftsays">
    	<div id="full-bottom"></div>
    	<div class="title-2cloumb">
        	<h1>The City Populer Post</h1>
        	<p>Lorem ipsum is simply data text</p>
        </div>
        <div class="leftcloumb-list">
        	<ul>
            	<li><div class="margin4 fright"><a href="#" class="minibutton2">More</a></div><img src="image/post/l1.png" alt="" class="leftcloumb-list-img"> <h1>Duis Vitae Mauris Eu Neque Elementum</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
                <li><div class="margin4 fright"><a href="#" class="minibutton2">More</a></div><img src="image/post/l2.png" alt="" class="leftcloumb-list-img"> <h1>Morbi Mauris Ligula</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
                <li><div class="margin4 fright"><a href="#" class="minibutton2">More</a></div><img src="image/post/l3.png" alt="" class="leftcloumb-list-img"> <h1>Sed Eget Adipiscing Eros Habitasse</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
            </ul>
        </div>
    </div>
    <!-- What Says Our Company End -->
    
    <!-- Bigg Boss -->
    <div class="grid_8 margin">
    	<div class="title-2cloumb">
        	<h1>Latest Comment Post</h1>
        	<p>Lorem ipsum is simply printing swith data text</p>
        </div>
        <div class="bussiness-boss">
            <img src="image/post/lbig.png" class="bussiness-boss-img" alt="">
            <div class="bussiness-shadow"><img src="image/theme/bigshadow2.png" alt=""></div>
            
            <h1>Micheal Smith Fisher:</h1>
            <p>"Phasellus dapibus rutrum mi, sed elementum felis placerat ac. Aenean gravida elementum arcu non ultrices. Proin pharetra ipsum vitae augue dignissim pharetra. Maecenas turpis leo, dignissim a elementum id, feugiat eget leo. Ut vitae neque aliquam orci blandit elementum eu id nibh. Class aptent taciti sociosqu ad litora."</p>
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