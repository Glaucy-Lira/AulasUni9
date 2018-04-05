$(document).ready(function() {
	
	$('button').eq(0).click(function(){	
        $('#novadiv').show()
        $('#novadiv').animate({left: '+=500px'}, 6000)
	})

	$('button').eq(1).click(function(){	
        $('#novadiv').stop()
	})

	$('button').eq(2).click(function(){	
		$('#novadiv').stop()
        $('#novadiv').css({left:'170px'})
        $('#novadiv').hide()
	})
})