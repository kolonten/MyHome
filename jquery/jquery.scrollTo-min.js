/**
 * jQuery.ScrollTo - Easy element scrolling using jQuery.
 * Copyright (c) 2007-2008 Ariel Flesler - aflesler(at)gmail(dot)com | http://flesler.blogspot.com
 * Dual licensed under MIT and GPL.
 * Date: 9/11/2008
 * @author Ariel Flesler
 * @version 1.4
 *
 * http://flesler.blogspot.com/2007/10/jqueryscrollto.html
 */
(function($){
	$.fn.zxxAnchor = function(options){
		var defaults = {
			ieFreshFix: true,
			anchorSmooth: true,
			anchortag: "anchor",
			animateTime: 500
		};
		var sets = $.extend({}, defaults, options || {});
		if(sets.ieFreshFix){
			var url = window.location.toString();
			var id = url.split("#")[1];
			if(id){
				var t = $("#"+id).offset().top;
				$(window).scrollTop(t);
			}	
		}
		$(this).each(function(){
			$(this).click(function(){
				var aim = $(this).attr(sets.anchortag).replace(/#/g,"");	
				var pos = $("#"+aim).offset().top;
				if(sets.anchorSmooth){
					$("html,body").animate({scrollTop: pos-200}, sets.animateTime);	
				}else{
					$(window).scrollTop(pos);
				}
				return false;				   
			});	
		});
	};
})(jQuery);