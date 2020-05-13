<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8" content="">
<title>City Business Theme</title>

<!-- Style CSS -->
<link rel="stylesheet" href="css/grid/main.css" />

<!-- Google Font -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300'
	rel='stylesheet'>
<link href='http://fonts.googleapis.com/css?family=Mate+SC'
	rel='stylesheet'>
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow'
	rel='stylesheet'>
<link href='http://fonts.googleapis.com/css?family=Marvel'
	rel='stylesheet'>
<link href='http://fonts.googleapis.com/css?family=Oswald'
	rel='stylesheet'>
<link href='http://fonts.googleapis.com/css?family=Abel'
	rel='stylesheet'>
<link href='http://fonts.googleapis.com/css?family=Pinyon+Script'
	rel='stylesheet'>
<link href='http://fonts.googleapis.com/css?family=Cabin:400italic'
	rel='stylesheet'>

<!-- JS Min -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"
	type="text/javascript"></script>
<script src="js/general.js" type="text/javascript"></script>

<!-- JS Theme Style -->
<script type="text/javascript">
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

<script src="./fancybox/jquery.mousewheel-3.0.4.pack.js"
	type="text/javascript"></script>
<script src="./fancybox/jquery.fancybox-1.3.4.pack.js"
	type="text/javascript"></script>

</head>
<body>
	<s:set name="themeimg" value="'01'" scope="session"></s:set>
	<s:set name="color" value="#ececec" scope="session"></s:set>
	<!-- Container Start-->
	<div class="container_16" style="padding-left: 15px;">

		<div id="topdot" class="grid_16 margin"></div>

		<!-- Top Menu -->
		<div class="grid_16 margin">
			<div id="topmenu">
				<ul>
					<li><a id="contactline1" href="#contactline"><img
							src="image/icon/mail.png" alt="">
					</a>
					</li>
					<li><a id="contactline2" href="#contactadress"><img
							src="image/icon/phone.png" alt="">
					</a>
					</li>
					<li><input name="Search" type="text" value="Search:"
						onfocus="if(this.value=='Search:')this.value='';"
						onblur="if(this.value=='')this.value='Search:';" />
					</li>
				</ul>
				<!-- Popup Contact Form -->
				<div class="dnone">
					<div id="contactline" class="popupcontact">
						<h1>好友留言</h1>
						<form action="">
							<fieldset>
								<textarea name="Message"
									onfocus="if(this.value=='Message:')this.value='';"
									onblur="if(this.value=='')this.value='Message:';" cols=""
									rows="">Message:</textarea>
							</fieldset>
							<fieldset>
								<input type="submit" value="Send" />
							</fieldset>
						</form>
					</div>
				</div>
				<!-- Popup Contact Adress -->
				<div class="dnone">
					<div id="contactadress" class="popupcontact">
						<h1>City Adress Detail</h1>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, when an unknown printer
							took a galley of type and scrambled it to make a type specimen
							book.</p>
						<h5>Telephone:</h5>
						<p>(+90) 555 444 333 PBX</p>
						<h5>Fax:</h5>
						<p>(+90) 555 444 333 PBX</p>
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
				<a href="#"><img src="image/theme/logo.png" alt="">
				</a>
			</div>

			<div class="grid_12 topmenu"></div>
		</div>
		<!-- #Page Back -->
		<div id="pageback"></div>
		<div id="tabback2"></div>

		<div class="grid_16 margin">
			<div id="tabmenuback2"></div>
			<div class="bigtitle">
				<h1>欢迎来到SNS社区</h1>
				<h2>Welcome to my profile</h2>
			</div>
		</div>

		<!-- Clear -->
		<div class="clear margin5"></div>

		<!-- Blog List -->
		<div class="grid_11 blog-list margin">

			<!-- #1 -->
			<script type="text/javascript">
        $(function(){						  
        $('#1').bxSlider({
        mode: 'fade',
        captions: false,
        auto: false,
        controls: true
        });
        });	
        </script>
			<div class="bloglisting">
				<h1>Fusce EleiFend Augue a Quam Molestie Viverra</h1>
				<h2>
					Posted by <a href="#">admin</a>, in <a href="#">news</a>
					categories, <a href="#">141</a> comments
				</h2>

				<div class="bloglist-date">
					<h1>31</h1>
					<h2>July</h2>
				</div>

				<ul id="1" class="listingblogul">
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl1.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl1.png" alt="" class="three-columb-img" />
						</div>
					</li>
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl2.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl2.png" alt="" class="three-columb-img" />
						</div>
					</li>
				</ul>
				<div class="bloglisting-img-shadow">
					<img src="image/theme/bigshadow3.png" alt="">
				</div>
				<div class="bloglist-nav"></div>

				<p>Phasellus sagittis iaculis magna, quis placerat mauris
					egestas sed. Praesent arcu nisi, vestibulum id molestie at, ornare
					non magna. Nam quis feugiat nulla. Donec lacinia malesuada quam, ut
					porta ante feugiat sit amet. Aenean vel orci mauris. Vivamus in
					ante et mi hendrerit ultrices eget quis sapien. Fusce feugiat
					semper risus a facilisis. Etiam tempor erat vel orci laoreet
					commodo. Nullam cursus posuere arcu ut ornare. Suspendisse pretium
					quam id arcu ornare non consectetur magna sodales. Pellentesque
					iaculis fermentum vestibulum. Proin nec tortor odio. In hac
					habitasse platea dictumst.</p>
				<div class="margin6 fright">
					<a href="#" class="minibutton">More</a>
				</div>

			</div>



			<!-- #2 -->
			<script type="text/javascript">
        $(function(){						  
        $('#2').bxSlider({
        mode: 'fade',
        captions: false,
        auto: false,
        controls: true
        });
        });	
        </script>
			<div class="bloglisting">
				<h1>Nullam Eleifend Vulputate Interdum Nisl</h1>
				<h2>
					Posted by <a href="#">admin</a>, in <a href="#">old car</a>
					categories, <a href="#">664</a> comments
				</h2>
				<div class="bloglist-date">
					<h1>29</h1>
					<h2>July</h2>
				</div>

				<ul id="2" class="listingblogul">
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl3.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl3.png" alt="" class="three-columb-img" />
						</div>
					</li>
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl4.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl4.png" alt="" class="three-columb-img" />
						</div>
					</li>
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl5.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl5.png" alt="" class="three-columb-img" />
						</div>
					</li>
				</ul>
				<div class="bloglisting-img-shadow">
					<img src="image/theme/bigshadow3.png" alt="">
				</div>
				<div class="bloglist-nav"></div>
				<p>Phasellus sagittis iaculis magna, quis placerat mauris
					egestas sed. Praesent arcu nisi, vestibulum id molestie at, ornare
					non magna. Nam quis feugiat nulla. Donec lacinia malesuada quam, ut
					porta ante feugiat sit amet. Aenean vel orci mauris. Vivamus in
					ante et mi hendrerit ultrices eget quis sapien. Fusce feugiat
					semper risus a facilisis. Etiam tempor erat vel orci laoreet
					commodo. Nullam cursus posuere arcu ut ornare. Suspendisse pretium
					quam id arcu ornare non consectetur magna sodales. Pellentesque
					iaculis fermentum vestibulum. Proin nec tortor odio. In hac
					habitasse platea dictumst.</p>
				<div class="margin6 fright">
					<a href="#" class="minibutton">More</a>
				</div>
			</div>

			<!-- #3 -->
			<script type="text/javascript">
        $(function(){						  
        $('#3').bxSlider({
        mode: 'fade',
        captions: false,
        auto: false,
        controls: true
        });
        });	
        </script>
			<div class="bloglisting">
				<h1>Vivamus Elementum Euismod Fringilla</h1>
				<h2>
					Posted by <a href="#">admin</a>, in <a href="#">dream works</a>
					categories, <a href="#">292</a> comments
				</h2>
				<div class="bloglist-date">
					<h1>25</h1>
					<h2>July</h2>
				</div>

				<ul id="3" class="listingblogul">
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl6.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl6.png" alt="" class="three-columb-img" />
						</div>
					</li>
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl7.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl7.png" alt="" class="three-columb-img" />
						</div>
					</li>
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl8.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl8.png" alt="" class="three-columb-img" />
						</div>
					</li>
				</ul>
				<div class="bloglisting-img-shadow">
					<img src="image/theme/bigshadow3.png" alt="">
				</div>
				<div class="bloglist-nav"></div>
				<p>Phasellus sagittis iaculis magna, quis placerat mauris
					egestas sed. Praesent arcu nisi, vestibulum id molestie at, ornare
					non magna. Nam quis feugiat nulla. Donec lacinia malesuada quam, ut
					porta ante feugiat sit amet. Aenean vel orci mauris. Vivamus in
					ante et mi hendrerit ultrices eget quis sapien. Fusce feugiat
					semper risus a facilisis. Etiam tempor erat vel orci laoreet
					commodo. Nullam cursus posuere arcu ut ornare. Suspendisse pretium
					quam id arcu ornare non consectetur magna sodales. Pellentesque
					iaculis fermentum vestibulum. Proin nec tortor odio. In hac
					habitasse platea dictumst.</p>
				<div class="margin6 fright">
					<a href="#" class="minibutton">More</a>
				</div>
			</div>

			<!-- #4 -->
			<script type="text/javascript">
        $(function(){						  
        $('#4').bxSlider({
        mode: 'fade',
        captions: false,
        auto: false,
        controls: true
        });
        });	
        </script>
			<div class="bloglisting">
				<h1>Donec Erat Augue Venenatis Consectetur Non Arcu</h1>
				<h2>
					Posted by <a href="#">admin</a>, in <a href="#">dream works</a>
					categories, <a href="#">292</a> comments
				</h2>
				<div class="bloglist-date">
					<h1>19</h1>
					<h2>July</h2>
				</div>

				<ul id="4" class="listingblogul">
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl9.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl9.png" alt="" class="three-columb-img" />
						</div>
					</li>
					<li><div class="overlay_fade">
							<a class="team" href="image/post/bl10.png"><div
									class="overlay_zoom zoom_black"></div>
							</a><img src="image/post/bl10.png" alt="" class="three-columb-img" />
						</div>
					</li>
				</ul>
				<div class="bloglisting-img-shadow">
					<img src="image/theme/bigshadow3.png" alt="">
				</div>
				<div class="bloglist-nav"></div>
				<p>Phasellus sagittis iaculis magna, quis placerat mauris
					egestas sed. Praesent arcu nisi, vestibulum id molestie at, ornare
					non magna. Nam quis feugiat nulla. Donec lacinia malesuada quam, ut
					porta ante feugiat sit amet. Aenean vel orci mauris. Vivamus in
					ante et mi hendrerit ultrices eget quis sapien. Fusce feugiat
					semper risus a facilisis. Etiam tempor erat vel orci laoreet
					commodo. Nullam cursus posuere arcu ut ornare. Suspendisse pretium
					quam id arcu ornare non consectetur magna sodales. Pellentesque
					iaculis fermentum vestibulum. Proin nec tortor odio. In hac
					habitasse platea dictumst.</p>
				<div class="margin6 fright">
					<a href="#" class="minibutton">More</a>
				</div>
			</div>
		</div>

		<!-- Sidebar -->
		<div class="grid_5 margin7">
			<!-- #2 -->
			<div class="sidebar-tags">
				<h2>点击进入个人空间</h2>

				<ul>
					<li><a href='blog!in?id=<s:property value="#user.id"/>'><img
							alt="" width="60" height="60"
							src='<s:property value="#user.img"/>'>
					</a>
					</li>

				</ul>
			</div>
			<div class="sidebar-tags">
				<h2>SNS社区会员</h2>
				<ul>
					<s:iterator value="#users">
						<li><a href='blog!in?id=<s:property value="id"/>'><img
								alt="" width="60" height="60" src='<s:property value="img"/>'>
						</a>
						</li>
					</s:iterator>

				</ul>
			</div>

			<!-- #1 -->
			<div class="sidebar-categories"></div>


			<!-- #3 -->
			<div class="sidebar-categories"></div>
		</div>

		<!-- Clear-->
		<div class="clear"></div>

		<!-- Advert Start -->
		<div id="advert" class="grid_16 advert">
			<div id="advertback"></div>
			<div class="margin3 fleft">
				<a href="#" class="minibutton margin8">1</a> <a href="#"
					class="minibutton-black margin8">2</a> <a href="#"
					class="minibutton-black margin8">3</a> <a href="#"
					class="minibutton-black margin8">4</a> <a href="#"
					class="minibutton-black margin8">></a>
			</div>
			<div class="margin3 fright">
				<a href="#" class="minibutton margin8">Prev Post</a> <a href="#"
					class="minibutton">Next Post</a>
			</div>
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
					<li><div class="margin4 fright">
							<a href="#" class="minibutton2">More</a>
						</div>
						<img src="image/post/l1.png" alt="" class="leftcloumb-list-img">
						<h1>Duis Vitae Mauris Eu Neque Elementum</h1>
						<p>In consequat velit tempor dui dapibus mollis. Morbi a risus
							felis. Nulla non odio nunc, sit amet.</p>
					</li>
					<li><div class="margin4 fright">
							<a href="#" class="minibutton2">More</a>
						</div>
						<img src="image/post/l2.png" alt="" class="leftcloumb-list-img">
						<h1>Morbi Mauris Ligula</h1>
						<p>In consequat velit tempor dui dapibus mollis. Morbi a risus
							felis. Nulla non odio nunc, sit amet.</p>
					</li>
					<li><div class="margin4 fright">
							<a href="#" class="minibutton2">More</a>
						</div>
						<img src="image/post/l3.png" alt="" class="leftcloumb-list-img">
						<h1>Sed Eget Adipiscing Eros Habitasse</h1>
						<p>In consequat velit tempor dui dapibus mollis. Morbi a risus
							felis. Nulla non odio nunc, sit amet.</p>
					</li>
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
				<div class="bussiness-shadow">
					<img src="image/theme/bigshadow2.png" alt="">
				</div>
				<h1>Micheal Smith Fisher:</h1>
				<p>"Phasellus dapibus rutrum mi, sed elementum felis placerat
					ac. Aenean gravida elementum arcu non ultrices. Proin pharetra
					ipsum vitae augue dignissim pharetra. Maecenas turpis leo,
					dignissim a elementum id, feugiat eget leo. Ut vitae neque aliquam
					orci blandit elementum eu id nibh. Class aptent taciti sociosqu ad
					litora."</p>
			</div>
		</div>
		<!-- Bigg Boss End -->

		<!-- Clear-->
		<div class="clear"></div>

		<div id="company-logo" class="grid_16">
			<div id="tabback"></div>
			<div id="tabmenuback"></div>
			<div id="logo-list">
				<script src="js/portfolio.js" type="text/javascript"></script>
				<div id="ps_slider" class="ps_slider" style="margin-top: 32px;">
					<a class="prev disabled"></a> <a class="next disabled"></a>
					<div id="ps_albums" class="logolist">
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_01.jpeg" class="logolist-img" alt="">
							</a>
						</div>
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_02.jpeg" class="logolist-img" alt="">
							</a>
						</div>
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_03.jpeg" class="logolist-img" alt="">
							</a>
						</div>
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_04.jpeg" class="logolist-img" alt="">
							</a>
						</div>
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_05.jpeg" class="logolist-img" alt="">
							</a>
						</div>
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_06.jpeg" class="logolist-img" alt="">
							</a>
						</div>
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_07.jpeg" class="logolist-img" alt="">
							</a>
						</div>
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_08.jpeg" class="logolist-img" alt="">
							</a>
						</div>
						<div class="ps_album">
							<a class="team" href="image/post/bigimage.png"
								title="LOGO NAME </BR> Description: Lorem ipsum is simply dummy data text printing."><img
								src="image/post/logo_09.jpeg" class="logolist-img" alt="">
							</a>
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
					<p>Lorem Ipsum is simply dummy text of the printing</p>
					<ul>
						<li><a href="#">Portfolio</a>
						</li>
						<li><a href="#">Company News</a>
						</li>
						<li><a href="#">Services Options</a>
						</li>
						<li><a href="#">Team Blog</a>
						</li>
						<li><a href="#">Who Are We</a>
						</li>
						<li><a href="#">People Says</a>
						</li>
						<li><a href="#">Contact</a>
						</li>
					</ul>
				</div>
				<!-- Latest Portfolio -->
				<div class="footerportfolio margin">
					<h2>Latest PortfolIo Items</h2>
					<p>Lorem Ipsum is simply dummy text of the printing</p>
					<ul>
						<li><a href="#"><img src="image/post/p1.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p2.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p3.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p4.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p5.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p6.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p7.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p8.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p9.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p10.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p11.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p12.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p13.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p14.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p15.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p16.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p17.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p18.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p19.png" alt="">
						</a>
						</li>
						<li><a href="#"><img src="image/post/p20.png" alt="">
						</a>
						</li>
					</ul>
					<div class="footerportfolio-button">
						<a href="#" class="middlebutton">Portfolio</a>
					</div>
				</div>
				<!-- Social Widget -->
				<div class="footersocial margin">
					<h2>SocIal Platform Of CIty</h2>
					<p>Lorem Ipsum is simply dummy text of the printing</p>
					<div class="twittermessage">
						<div class="footertwitter">
							<p>鈥淟orem Ipsum is text of dummy printing setting data lorem
								Ipsum is text of dummy printing setting data. text of鈥�/p></p>
						</div>
						<div class="twitterbird">
							<img src="image/icon/twitterbird.png" alt="">
						</div>
					</div>
					<div class="footerothermedia">
						<p>Others Social Media</p>
						<ul>
							<li><a href="#"><img src="image/icon/s1.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s2.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s3.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s4.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s5.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s6.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s7.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s8.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s9.png" alt="">
							</a>
							</li>
							<li><a href="#"><img src="image/icon/s10.png" alt="">
							</a>
							</li>
						</ul>
						<div class="footersocial-button">
							<a href="#" class="middlebutton">Contact</a>
						</div>
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
				<p>Copright 漏 2012 City Themes iamthemes.com. All rights
					reserved. W3C standart web site valid xjsp and css</p>
				<p>
					Design by Mithat Sigmaz / <a href="http://www.cubegraphic.net">CUBE
						GRAPHIC</a> - Code by IAMILKAY / <a href="http://www.iamthemes.com">IAMTHEMES</a>
				</p>
			</div>
		</div>
	</div>

</body>
</html>