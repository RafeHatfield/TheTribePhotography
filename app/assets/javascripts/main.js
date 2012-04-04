$(document).ready(function(){

//Navigation
$('#menu li a').click( function () {
$('#menu li a').removeClass("active");
$(this).addClass("active");
}); 	
	
//prettyPhoto
$("a[rel^='pretty']").prettyPhoto();
	
//Tooltip
$("a[rel^='tipsy']").tipsy({gravity: 's'});

$('a.scrol').click(function() {
   var elementClicked = $(this).attr("href");
   var destination = $(elementClicked).offset().top;
   $("html:not(:animated),body:not(:animated)").animate({ scrollTop: destination-20}, 500 );
   return false;
});

//Toggle
$(".close").click(function(){$("#seting").toggle("fast");
$(this).toggleClass("openpanel");return false});
$(".toggle-block").hide(); 

$("p.toggle").click(function(){
		$(this).toggleClass("active").next().slideToggle(500);
		return false; 
	});
	
$('ul.tabs').each(function() {
    $(this).find('li').each(function(i) {
      $(this).click(function(){
        $(this).addClass('active').siblings().removeClass('active')
          .parents('div.tab_block').find('div.tab').hide().end().find('div.tab:eq('+i+')').fadeIn(2000);
      });
    });
});

//Accordion
$('.acc-block').hide();
$('.acc-header:first').addClass('active').next().show();
$('.acc-header').click(function(){
	if( $(this).next().is(':hidden') ) {
		$('.acc-header').removeClass('active').next().slideUp();
		$(this).toggleClass('active').next().slideDown();
	}
	return false;
});  

$('.link').css({opacity: 0.0});

$(".image").hover(function(){
	$(this).find(".link").stop(true, true).animate({ opacity: 1 }, 500);
	$(this).find("img").stop(true, true).animate({ opacity: 0.85 }, 500);
	}, function() {
	$(this).find(".link").stop(true, true).animate({ opacity: 0.0 }, 500);
	$(this).find("img").stop(true, true).animate({ opacity: 1 }, 500);
});

//Slider
$("#slider").hover(function(){
	$(this).find(".image-bg").hide(500);
	$(this).find("#slider-content").stop(true, true).animate({ opacity: 0.8 }, 500);
	}, function() {
	$(this).find(".image-bg").show(500);
	$(this).find("#slider-content").stop(true, true).animate({ opacity: 1.0 }, 500);;
});

	
});