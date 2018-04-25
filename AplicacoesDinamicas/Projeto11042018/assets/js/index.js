$(document).ready(function() {
	$('.abre-fecha').hide()
	
	$('<div id="tela"><img src="img/10.jpg" alt="Descrição da foto"/></div>')
	.insertAfter('#galeria')
	
	$('.foto').click(function(e){
		e.preventDefault()

		$('#tela img').remove()

		$('<img />')
		.attr('src', $(this).attr('src'))
		.css('opacity', '0.3')
		.appendTo('#tela')
		.animate({opacity:1}, 2000)
	})
})