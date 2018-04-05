$(document).ready(function(){

    $('.exer1').click(() => alert('Olá mundão!!!'))
    $('.exer2').click(() => alert('Link Funcionando!'))

    $('.exer3').click(() => {
    	let cor = '#'+ hx() + hx() + hx()
    	console.log(cor)
    	$('body').css('background-color', cor) 
	})
    
   	function hx(){
		return parseInt((Math.random() * 255)).toString(16).padStart(2)
	}

	$('#abcd').click(function(){
		let cor = '#'+ hx() + hx() + hx()
    	console.log(cor)
		$(this).css('border-color', cor)
		$(this).val('você voltou')
	})
})