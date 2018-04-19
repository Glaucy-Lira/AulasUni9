$(document).ready(function () {
   const intervalo = 1500
    var imagem = 10
    var rodar = setInterval(animar, intervalo)  
    
    $('<p class="legenda"/>').appendTo('#galeria')
    $('.legenda').css({
        position : 'absolute',
        ocupacity: 0.9,
        visibility:'hidden',
        with:'488px',
        lef:-4,
        top:380,
        color:'#333',
        zindex:1000,
        fontSize:'14px',
        padding:'5px 10px',
        borderBottom:'1px dotted #fff',
        background:'#6cf',
        margin:0
    })

    function animar() {
        imagem--
        $('img').eq(imagem).toggle()
        $('#legenda').remove()
        if(imagem==0){
           while(imagem!=10){
            $('img').eq(imagem).toggle()
            imagem++
           }
        }
    }   

    $('img').hover(
        function(){
            clearInterval(rodar)
            $('.legenda').text($(this).attr('alt'))
            .css('visibility','visible')
        }, 
        function(){
            $('.legenda').css('visibility','hidden')
            rodar = setInterval(animar, intervalo)
        }
    )
    
})