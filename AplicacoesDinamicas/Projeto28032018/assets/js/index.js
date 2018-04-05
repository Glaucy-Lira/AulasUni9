$(document).ready(function() {
	$('#btn1').click(function(){
		$('div').show()
	})
	$('#btn2').click(function(){
		$('div').hide()
	})

	$('#btn3').click(function(){
		$('div').show('slow')
	})
	$('#btn4').click(function(){
		$('div').hide('slow')
	})

	$('#btn5').click(function(){
		$('div').show(3000)
	})
	$('#btn6').click(function(){
		$('div').hide(1500)
	})

	$('#btn7').click(function(){
		$('div').toggle()
	})
})