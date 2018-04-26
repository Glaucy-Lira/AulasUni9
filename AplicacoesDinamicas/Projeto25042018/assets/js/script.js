$(document).ready(function () {

  var $slider = $('#carousel')
  var $slide = 'li'
  var $transition_time = 500
  var $time_between_slides = 2000

  function slides(){
    return $slider.find($slide)
  }

  slides().fadeOut()
  
  slides().first().addClass('active')
  slides().first().fadeIn($transition_time)

  function animar(){
    var $i = $slider.find($slide + '.active').index()

    slides().eq($i).removeClass('active')
    slides().eq($i).fadeOut($transition_time)

    if (slides().length == $i + 1) $i = -1

    slides().eq($i + 1).fadeIn($transition_time)
    slides().eq($i + 1).addClass('active')
  }

  $interval = setInterval(animar, $transition_time +  $time_between_slides )

  $('#carousel').hover(
    function(){
        clearInterval($interval)
    }, 
    function(){
      $interval = setInterval(animar, $transition_time +  $time_between_slides )
    }
)

})
