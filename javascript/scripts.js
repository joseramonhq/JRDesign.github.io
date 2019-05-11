
function mostrar() {
    document.getElementById("sidebar").style.width = "300px";
    document.getElementById("contenido").style.marginLeft = "300px";
    document.getElementById("abrir").style.display = "none";
    document.getElementById("cerrar").style.display = "inline";
}

function ocultar() {
    document.getElementById("sidebar").style.width = "0";
    document.getElementById("contenido").style.marginLeft = "0";
    document.getElementById("abrir").style.display = "inline";
    document.getElementById("cerrar").style.display = "none";
}




function avanzar(n) {
  mostrarFotos(posicion += n);
}


function fotoActual(n) {
  mostrarFotos(posicion = n);
}

function mostrarFotos(n) {
  var i;
  var slides = document.getElementsByClassName("fotos");
  var puntos = document.getElementsByClassName("punto");
  if (n > slides.length) {posicion = 1}
  if (n < 1) {posicion = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < puntos.length; i++) {
      puntos[i].className = puntos[i].className.replace(" active", "");
  }
  slides[posicion-1].style.display = "block";
  puntos[posicion-1].className += " active";
} 
