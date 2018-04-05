
function msg() {	
	alert("Hello Word!");
}

function muda(cor, n){
	document.getElementById(n).style.color=cor;
}

function hx(){
	return parseInt((Math.random() * 255)).toString(16).padStart(2);
}

function corAlert() {
	var cores = "#"+hx()+hx()+hx();
	document.body.style.backgroundColor = cores;
	document.getElementById("cor").innerHTML = cores;
}

setInterval(function(){corAlert()}, 2000);