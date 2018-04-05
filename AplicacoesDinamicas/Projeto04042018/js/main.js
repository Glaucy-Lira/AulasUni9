$(document).ready(function() {
	$('.noticias').eq(0).click(function(){
		$('span').eq(0).toggle($(this).text())
	})

	$('.noticias').eq(1).click(function(){
		$('span').eq(1).toggle($(this).text())
	})
	$('.noticias').eq(2).click(function(){
		$('span').eq(2).toggle($(this).text())
	})
	$('.noticias').eq(3).click(function(){
		$('span').eq(3).toggle($(this).text())
	})
})
  