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
        	<h1>The City Full Page</h1>
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
        	<h1>Fusce EleiFend Augue a Quam Molestie Viverra</h1>
            <h2>Posted by <a href="#">admin</a>, <a href="#">141</a> comments</h2>
            
            <ul id="1" class="listingblogul3">            
                  <li><div class="overlay_fade"><a class="team" href="image/post/bigimage.png"><div class="overlay_zoom zoom_black"></div></a><img src="image/post/f1.png" alt="" class="three-columb-img" /></div></li>
                  <li><div class="overlay_fade"><a class="team" href="image/post/bigimage.png"><div class="overlay_zoom zoom_black"></div></a><img src="image/post/f2.png" alt="" class="three-columb-img" /></div></li>
            </ul>
            <div class="bloglisting-img-shadow3"><img src="image/theme/bigshadow3.png" alt=""></div>
            
            <div class="bloglist-nav2"></div>
        </div>
        
        <!-- Clear -->
    	<div class="clear"></div>
    
        <div class="single-post">
        	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at augue sit amet justo viverra sollicitudin. Integer pulvinar quam velit. Vivamus purus diam, iaculis in condimentum eget, consectetur ut odio. Etiam dapibus malesuada neque nec commodo. Cras tempor pulvinar interdum. Pellentesque dictum, orci auctor egestas malesuada, est lorem tempus erat, eu varius eros dolor in lectus. Sed in lacus arcu. In nisi augue, pulvinar eget lobortis commodo, mollis a metus. Aliquam elit neque, pharetra sit amet malesuada a, vestibulum vitae nisl. Cras ante ligula, ullamcorper vitae ultricies non, viverra vitae metus. Vivamus hendrerit volutpat venenatis.</p>
            
            <h1>This is H1 Tag</h1>
            <p>Duis vitae mauris eu neque elementum lobortis sit amet eget magna. Sed viverra tincidunt auctor. Sed tincidunt nunc et dui ornare adipiscing. Ut varius ultrices dolor, quis egestas purus semper sed. Duis et nisi tortor. Suspendisse eget odio gravida purus convallis vehicula quis nec orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel urna sed ligula pretium pharetra. Maecenas aliquam.</p>
            
            <h2>This is H2 Tag</h2>
            <p>Morbi mauris ligula, ullamcorper a sodales at, aliquet pharetra mi. Phasellus et libero eget ligula aliquet mattis. Vivamus metus erat, ornare aliquam varius a, eleifend ac nunc. Nam luctus, lectus adipiscing dignissim feugiat, velit ligula volutpat turpis, quis accumsan libero dui ac diam. Ut at lacus eget enim aliquam luctus. Pellentesque congue velit in massa consequat sit amet pretium quam luctus.</p>
            
            <h3>This is H3 Tag</h3>
            <p>Nunc pretium ante eget ligula mattis non hendrerit ante condimentum. Nulla vel suscipit velit. Aliquam sollicitudin venenatis turpis placerat luctus. Etiam consequat commodo velit sed lacinia. Morbi purus purus, ultrices in varius et, adipiscing sed tortor. Proin nec nibh porta purus tincidunt fringilla. Nulla facilisi. Vivamus et neque at orci tincidunt tempor. Fusce id libero eu felis cursus interdum.</p>
            
            <h4>This is H4 Tag</h4>
            <p>Sed eget adipiscing eros. In hac habitasse platea dictumst. Vestibulum tristique nisi sit amet orci feugiat et tempus sapien vehicula. Vivamus at turpis eu lorem tempus aliquet et sit amet nibh. Etiam ut nulla sapien, quis consectetur odio. Sed facilisis purus mauris, vel fermentum augue. Pellentesque lacus erat, dignissim sit amet varius nec, semper vitae justo. Suspendisse id sem ut nibh tristique.</p>
            
            <h5>This is H5 Tag</h5>
            <p>Fusce quis orci quis ipsum viverra adipiscing. Aliquam euismod nunc ac risus venenatis imperdiet. Curabitur orci felis, egestas eu porttitor id, ornare sed mauris. Praesent tempus porta metus, eu facilisis nibh suscipit vel. Fusce nec sem quam. Praesent mi arcu, condimentum vel bibendum quis, condimentum quis felis. Integer consectetur nulla in lacus dignissim in pulvinar enim pharetra.</p>
            
            <h6>This is H6 Tag</h6>
            <p>Cras vulputate, ligula a sagittis viverra, mi libero varius libero, sit amet vulputate neque nunc non turpis. Mauris ut dui turpis. Proin egestas ultrices nisi dignissim facilisis. In ut leo sed sem semper eleifend cursus vel enim. Quisque commodo, erat in tempor condimentum, libero mauris pulvinar eros, id lacinia est leo sed nunc. Sed ut semper elit. Cras ornare sapien a elit iaculis.</p>
            
            <p>Morbi dictum eleifend massa, non tincidunt enim fringilla sed. Donec lacinia ante eu lectus fermentum faucibus. Fusce tellus sem, ornare ut pellentesque in, blandit et arcu. Fusce vitae dictum orci. Nullam ultrices rhoncus enim, id condimentum tortor rutrum sit amet. Pellentesque ac mi vitae nulla adipiscing mollis. Aenean varius enim quis odio auctor at aliquam lacus fermentum. Morbi massa turpis, accumsan nec convallis non, pretium vel nunc. Curabitur cursus risus a nunc imperdiet quis gravida leo imperdiet. In fringilla volutpat tristique. Aliquam magna augue, elementum non congue sed, faucibus ac neque. Morbi scelerisque nulla vel erat iaculis eleifend. Vestibulum metus nunc, rhoncus vel pellentesque sed, scelerisque et velit. Suspendisse mattis mollis urna nec hendrerit.</p>
            
            <h2>Post 'Left' Image</h2>
            <img src="image/post/col1.png" alt="" class="three-columb-img alignleft shadowimg" width="256"><p>Suspendisse fermentum fermentum faucibus. Morbi scelerisque accumsan cursus. In at arcu sapien, et luctus sapien. Aenean eleifend quam et nisi malesuada vestibulum. Nam bibendum vehicula pretium. Vivamus tincidunt elit quis lacus euismod ut eleifend massa pharetra. Suspendisse semper lorem eget magna semper bibendum. Donec sem urna, semper eu commodo commodo, mattis a enim. Phasellus facilisis massa aliquet massa mattis aliquet. Proin a magna lectus, ut sodales metus. Fusce lacus felis, lacinia sit amet egestas ac, tristique in lectus. Sed pellentesque, dui quis cursus consectetur, velit sapien tempus turpis, a auctor quam risus nec arcu. Aliquam commodo volutpat eleifend. Mauris in elit augue, at molestie velit. Aliquam erat volutpat. Vestibulum quis ante massa, vel sagittis felis.</p>
            <p>Maecenas dignissim interdum vestibulum. Cras viverra felis id arcu euismod eget vestibulum purus auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac est est. Vestibulum quis leo in ligula bibendum tempor. Mauris in elit augue, at molestie velit. Aliquam erat volutpat. Vestibulum quis ante massa, vel sagittis felis. Maecenas dictum cursus condimentum. Cras at lorem magna. Ut vel tortor elit. Donec lacus ante, accumsan ac ullamcorper sed, suscipit iaculis mauris.</p>
            
            <h2>Post 'Right' Image</h2>
            <img src="image/post/c11.png" alt="" class="three-columb-img alignright shadowimg" width="256"><p>Suspendisse fermentum fermentum faucibus. Morbi scelerisque accumsan cursus. In at arcu sapien, et luctus sapien. Aenean eleifend quam et nisi malesuada vestibulum. Nam bibendum vehicula pretium. Vivamus tincidunt elit quis lacus euismod ut eleifend massa pharetra. Suspendisse semper lorem eget magna semper bibendum. Donec sem urna, semper eu commodo commodo, mattis a enim. Phasellus facilisis massa aliquet massa mattis aliquet. Proin a magna lectus, ut sodales metus. Fusce lacus felis, lacinia sit amet egestas ac, tristique in lectus. Sed pellentesque, dui quis cursus consectetur, velit sapien tempus turpis, a auctor quam risus nec arcu. Aliquam commodo volutpat eleifend. Mauris in elit augue, at molestie velit. Aliquam erat volutpat. Vestibulum quis ante massa, vel sagittis felis.</p>
            <p>Maecenas dignissim interdum vestibulum. Cras viverra felis id arcu euismod eget vestibulum purus auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac est est. Vestibulum quis leo in ligula bibendum tempor. Mauris in elit augue, at molestie velit. Aliquam erat volutpat. Vestibulum quis ante massa, vel sagittis felis. Maecenas dictum cursus condimentum. Cras at lorem magna. Ut vel tortor elit. Donec lacus ante, accumsan ac ullamcorper sed, suscipit iaculis mauris.</p>
            
            <h2>Listing 'UL' and 'OL' Style</h2>
            <p>Maecenas dignissim interdum vestibulum. Cras viverra felis id arcu euismod eget vestibulum purus auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac est est. Vestibulum quis leo in ligula bibendum tempor. Mauris in elit augue, at molestie velit. Aliquam erat volutpat. Vestibulum quis ante massa, vel sagittis felis. Maecenas dictum cursus condimentum. Cras at lorem magna. Ut vel tortor elit. Donec lacus ante, accumsan ac ullamcorper sed, suscipit iaculis mauris.</p>
            
            <ul class="w45 fleft">
            	<li>Post Ul Li List One</li>
                <li>Post Ul Li List Two</li>
                <li>Post Ul Li List Three</li>
                <li>Post Ul Li List Four</li>
                <li>Post Ul Li List Five</li>
            </ul>
            
            <ol class="w45 fright">
            	<li>Post Ul Li List One</li>
                <li>Post Ul Li List Two</li>
                <li>Post Ul Li List Three</li>
                <li>Post Ul Li List Four</li>
                <li>Post Ul Li List Five</li>
            </ol>
            
            <div class="clear"></div>
            
            <p>Suspendisse fermentum fermentum faucibus. Morbi scelerisque accumsan cursus. In at arcu sapien, et luctus sapien. Aenean eleifend quam et nisi malesuada vestibulum. Nam bibendum vehicula pretium. Vivamus tincidunt elit quis lacus euismod ut eleifend massa pharetra. Suspendisse semper lorem eget magna semper bibendum. Donec sem urna, semper eu commodo commodo, mattis a enim. Phasellus facilisis massa aliquet massa mattis aliquet. Proin a magna lectus, ut sodales metus. Fusce lacus felis, lacinia sit amet egestas ac, tristique in lectus. Sed pellentesque, dui quis cursus consectetur, velit sapien tempus turpis, a auctor quam risus nec arcu. Aliquam commodo volutpat eleifend. Mauris in elit augue, at molestie velit. Aliquam erat volutpat. Vestibulum quis ante massa, vel sagittis felis.</p>
            
        </div>
        
    </div>
    
    <!-- Clear-->
    <div class="clear"></div>
    
    <!-- Advert Start -->
    <div id="advert" class="grid_16 advert">
    	<div id="advertback"></div>
        <h1>"Quisque lorem orci, scelerisque vel aliquet in, rutrum vitae enim"</h1>
        <div class="margin3 fright"><a href="#" class="minibutton">Only $9.99 Purchase</a></div>
    </div>
    <!-- Advert End -->
    
    <!-- Clear-->
    <div class="clear"></div>
    
    <!-- What Says Our Company -->
    <div class="grid_8 margin leftsays">
    	<div id="full-bottom"></div>
    	<div class="title-2cloumb">
        	<h1>What Says Our Company</h1>
        	<p>Lorem ipsum is simply data text</p>
        </div>
        <div class="leftcloumb-list">
        	<ul>
            	<li><div class="margin4 fright"><a href="#" class="minibutton2">More</a></div><img src="image/post/say1.png" alt="" class="leftcloumb-list-img"> <h1>William Crahenberg Says:</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
                <li><div class="margin4 fright"><a href="#" class="minibutton2">More</a></div><img src="image/post/say2.png" alt="" class="leftcloumb-list-img"> <h1>Marie Smith Do Says:</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
                <li><div class="margin4 fright"><a href="#" class="minibutton2">More</a></div><img src="image/post/say3.png" alt="" class="leftcloumb-list-img"> <h1>Mark John Gothenberg Says:</h1><p>In consequat velit tempor dui dapibus mollis. Morbi a risus felis. Nulla non odio nunc, sit amet.</p></li>
            </ul>
        </div>
    </div>
    <!-- What Says Our Company End -->
    
    <!-- Bigg Boss -->
    <div class="grid_8 margin">
    	<div class="title-2cloumb">
        	<h1>The Big Boss Says</h1>
        	<p>Lorem ipsum is simply printing swith data text</p>
        </div>
        <div class="bussiness-boss">
            <img src="image/post/biggboss.png" class="bussiness-boss-img" alt="">
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