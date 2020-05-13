<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta charset="UTF-8">
<title>City Business Theme</title>
<style type="text/css">
<!--


* {
	margin:0;
	padding:0;
}

a {
	color:#1E7ACE;
	text-decoration:none;	
}

a:hover {
	color:#000;
	text-decoration:underline;
}
h3 {
	font-size:14px;
	font-weight:bold;
}

pre,p {
	color:#1E7ACE;
	margin:4px;
}
input, select,textarea {
	padding:1px;
	margin:2px;
	font-size:12px;
}
.buttom{
	padding:1px 10px;
	font-size:12px;
	border:1px #1E7ACE solid;
	background:#D0F0FF;
}
#formwrapper {
	width:95%;
	margin:15px auto;
	padding:20px;
	text-align:left;
}

fieldset {
	padding:10px;
	margin-top:5px;
	border:1px solid #1E7ACE;
	
}

fieldset legend {
	color:#1E7ACE;
	font-weight:bold;
	background:#fff;
}

fieldset label {
	float:left;
	width:120px;
	text-align:right;
	padding:4px;
	margin:1px;
}

fieldset div {
	clear:left;
	margin-bottom:2px;
}

.enter{ text-align:center;}
.clear {
	clear:both;
}

-->
</style>

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
        	<h1>添加日志</h1>
            <h2>Add Log</h2>
        </div>
    </div>
    
    <!-- Clear -->
    <div class="clear margin5"></div>
    
    
    <div id="formwrapper">
	<h3></h3>
	<form action="blog!update" method="post">
	
	<fieldset>
		<div>
			<input type="hidden" name="id" id="id" value="<s:property value="#blog.id" />" /> 
			<label for="title">文章标题</label>
			<input type="text" name="title" id="title" value="<s:property value="#blog.title" />" size="60" maxlength="200" /> 
			*(最多20个字符)<br />	
		</div>
		<div>
			<label for="source">文章来源</label>
			<input type="text" name="source" id="source" value="<s:property value="#blog.source" />" size="60" maxlength="200" /> 
			*(最多200个字符)<br />	
		</div>
		<div>
			<label for="author">文章作者</label>
			<input type="text" name="author" id="author" value="<s:property value="#blog.author" />" size="60" maxlength="200" /> 
			*(最多200个字符)<br />	
		</div>
		<div>
			<label for="recommend">设置属性</label>
			<input type="checkbox" name="" value="1">设为推荐
			<input type="checkbox" name="" value="1">设为头条
		</div>
		<div>
			<label for="descp">文章内容</label>
			<textarea rows="20" cols="100" name="descp" id="descp"><s:property value="#blog.descp" /></textarea>
			<br/>	
		</div>
		<div class="enter">
		    <input name="submit" type="submit"  value="提交" />
		    <input name="reset" type="reset"  value="重置" />
		</div>
	</fieldset>
	</form>
</div>
    
    
    
    
    
    
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