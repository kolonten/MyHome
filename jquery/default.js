// JavaScript Document

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
			$.cookie('search_default', search_default); 
		});
		$("#search-input").keydown(function(){
			var search_default = $("#search-default").val();
		if(event.keyCode == "13"){
			if(search_default == "1")
				$.fungoogle();
			else if(search_default == "2")
				$.funbaidu();
		}
	});
	if($.cookie('search_default')== null){
		$("#search-default").val(2);
		
	}
	else{
		$("#search-default").val($.cookie('search_default'));
	}
	
	$("#one-btn").zxxAnchor();
	$("#two-btn").zxxAnchor();
	$("#three-btn").zxxAnchor();
	$("#four-btn").zxxAnchor();
    $("#five-btn").zxxAnchor();
	$("#six-btn").zxxAnchor();
	$("#seven-btn").zxxAnchor();
	$("#eight-btn").zxxAnchor();
    $("#btnTop").zxxAnchor({
        anchorSmooth: false                       
    });	 
});