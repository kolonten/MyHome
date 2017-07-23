<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Home</title>
<link rel="shortcut icon" href="https://stdl.qq.com/stdl/newtabonline/assets/img/favicon.ico">
<link href="../css/default.css" type="text/css">
</head>
<script src="../jquery/1.12.4/jquery.min.js"></script>
<style>
.navbar {
	position: fixed;
	width: 100%;
	height: 200px;
	background-color: #27AE60;
	top: 0px;
	left: 0px;
	z-index: 1;
}
.main {
	width: 100%;
	height: 1000px;
	background-color: aqua;
	top: 200px;
}
.search {
	border-radius: 10px;
	position: relative;
	width: 50%;
	height: 40px;
	min-width: 330px;
	margin: 0 auto;
	top:60px;
	text-align: center;
	background-color: white;
	display: flex;
}
	.search-btn{	
	position: relative;
	width: 50%;
	height: 40px;
	min-width: 330px;
	margin: 0 auto;
		top:110px;
	text-align: center;
	}
	.div-input{
		flex: 1;
		border-radius: 10px;
	}
	.search-input{
		width: 100%;
		height: 40px;
		margin: 0 auto;
		border: 0px;
		padding: 0px;
		outline: none;
		font-size: 16px;
		border-radius: 10px;
		text-align: center; 
	}
	.f{
		-moz-box-shadow:2px 2px 16px #1D1DA1; -webkit-box-shadow:2px 2px 16px #1D1DA1; box-shadow:2px 2px 16px #1D1DA1;
	}
	.ff{
		-moz-box-shadow:0px 0px 0px #1D1DA1; -webkit-box-shadow:0px 0px 0px #1D1DA1; box-shadow:0px 0px 0px #1D1DA1;
	}
	.search-btn input{
		width: 48px;
		height: 48px;
		background-color: white;
		outline: 0px;
		border: 0px;
		padding: 0px;
		border-radius: 10px;
		background-repeat: no-repeat;
		background-position: center;
	}
	.google-btn{
		background-image: url(../image/Google.png);
	}
	.baidu-btn{		
		background-image : url(../image/Baidu.png);
	}
	.sougou-btn{
		background-image: url(../image/Sougou.png);
	}
	.bing-btn{
		background-image: url(../image/Bing.png);
	}
	.yahoo-btn{
		background-image: url(../image/Yahoo.png);
	}
	.weixin-btn{
		background-image: url(../image/Wechat.png);
	}
	.search-type{
		border-radius: 10px;
		outline: none;
		border: 0px;
	}
	.search-select{
		font-size: 12px;
	}
	.search-default{
		border-radius: 10px;
		outline: none;
		border: 0px;
		background-color: #27AE60;
	}
	.search-btn input:hover{
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-transform: scale(1.1);
	transform: rotate scale(1.1);
	-webkit-transition: all 0.4s ease-in-out;
	-moz-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
	}
</style>

<script type="text/javascript">

$(document).ready(function(){
  $("#search-input").focus(function(){
    $("#search").addClass("f").removeClass("ff");
  });
  $("#search-input").blur(function(){
    $("#search").addClass("ff");
  });

		$.extend({'fungoogle':function(){
		var resultl = $("#search-input").val();
		var type = $("#search-type").val();
		if(type == "1")
		window.open('https://www.google.com/search?ie=UTF-8&q='+resultl);
		else if(type == "2")
		window.open('https://www.google.com/search?ie=UTF-8&q='+resultl+'&tbm=isch');
		else if(type == "3")
		window.open('https://www.google.com/search?ie=UTF-8&q='+resultl+'&tbm=vid');
		else if(type == "4")
		window.open('https://www.google.com/search?ie=UTF-8&q='+resultl+'&tbm=nws');
		else if(type == "6")
		window.open('https://www.google.com/maps?ie=UTF-8&q='+resultl);
		else if(type == "8")
		window.open('https://www.google.com/maps?ie=UTF-8&q='+resultl+'&tbm=bks');
		else
			alert("Google没有此功能");
	}});
		
		$.extend({'funbaidu':function(){
		var resultl = $("#search-input").val();
		var type = $("#search-type").val();
		if(type == "1")
			window.open('https://www.baidu.com/s?ie=UTF-8&wd='+resultl);
		else if(type == "2")
		window.open('http://image.baidu.com/search/index?ie=UTF-8&word='+resultl);
		else if(type == "3")
		window.open('http://v.baidu.com/v?ie=utf-8&ie=UTF-8&word='+resultl);
		else if(type == "4")
		window.open('http://news.baidu.com/ns?ie=UTF-8&word='+resultl);
		else if(type == "5")
		window.open('http://music.baidu.com/search?ie=UTF-8&key='+resultl);
		else if(type == "6")
		window.open('http://map.baidu.com/?ie=UTF-8&s=s%26wd%3D'+resultl);
		else if(type == "7")
		window.open('http://tieba.baidu.com/f?ie=UTF-8&kw='+resultl);
		else if(type == "8")
		window.open('https://wenku.baidu.com/search?ie=UTF-8&word='+resultl);
	}});
	$("#google-btn").click(function(){
		$.fungoogle();
	});
	$("#baidu-btn").click(function(){
		$.funbaidu();
	});
		$("#search-default").change(function(){
			var search_default = $("#search-default").val();
			document.cookie=search_default;
		});
		$("#search-input").keydown(function(){
			var search_default = $("#search-default").val();
		if(event.keyCode == "13"){
			if(search_default == "1"){
				$.fungoogle();
			}
			else if(search_default == "2"){
				$.funbaidu();
			}
		}
	});
	alert(document.cookie);
	if(document.cookie == "")
		$("#search-default").val(1);
		else
		$("#search-default").val(document.cookie);
	
});
</script>
<body><a href="https://www.google.com/search?q=tbm=isch"></a>
<div>
  <div class="navbar">
    <div class="search-select" id="search-select" role="search">
       <span>默认搜索</span>
        <select class="search-default" id="search-default">
        	<option value="1">Google</option>
        	<option value="2">Baidu</option>
			<option value="3">Sougou</option>
        	<option value="4">Bing</option>
        	<option value="5">Yahoo</option>
        	<option value="6">Weixin</option>
        </select>
	  </div>
    <div class="search" id="search" role="search">
        <select class="search-type" id="search-type">
        	<option value="1">网页</option>
        	<option value="2">图片</option>
			<option value="3">视频</option>
        	<option value="4">新闻</option>
        	<option value="5">音乐</option>
        	<option value="6">地图</option>
        	<option value="7">贴吧</option>
			<option value="8">文库</option>
        </select>
       <div class="div-input">
        <input class="search-input" id="search-input" placeholder="搜索世界" autocomplete="on" autofocus tabindex="0" autocorrect="off" spellcheck="false" type="text"/>
        </div>
      </div>
      
  <div class="search-btn">
  	<input type="button" class="sougou-btn" id="sougou-btn" value=""/>
  	<input type="button" class="bing-btn" id="bing-btn" value=""/>
  	<input type="button" class="weixin-btn" id="weixin-btn" value=""/>
  	<input type="button" class="yahoo-btn" id="yahoo-btn" value=""/>
    <input type="button" class="baidu-btn" id="baidu-btn" value=""/>
    <input type="button" class="google-btn" id="google-btn" value=""/>
  </div>
  </div>

<div class="main"> </div>
</div> 
</body>
</html>