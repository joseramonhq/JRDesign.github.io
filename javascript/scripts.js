
var size = personas["persona"].length;

var foot = '<ul><a href=""><li>2019 JRDesign. Diseño por José Ramón Hidalgo</li></a><a href=""><li>Colaboraciones</li>'+
'</a><a href=""><li>Información de contacto</li></a><a href=""/><li>Blog</li></a></ul><ul><li><a href="">'+
'<img src="../imagenes/redesSociales/facebook.png" alt=""></a></li><li><a href="">'+
'<img src="../imagenes/redesSociales/instagram.png" alt=""></a></li><li><a href="">'+
'<img src="../imagenes/redesSociales/gorjeo.png" alt=""></a></li><li><a href="">'+
'<img src="../imagenes/redesSociales/instagram.png" alt=""></a></li></ul>';

/***************************************************BARRA LATERAL  ****************************************************/

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


/********************************************** PROYECTOS *-*********************************************************/

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
  if (n > slides.length) { posicion = 1 }
  if (n < 1) { posicion = slides.length }
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < puntos.length; i++) {
    puntos[i].className = puntos[i].className.replace(" active", "");
  }
  slides[posicion - 1].style.display = "block";
  puntos[posicion - 1].className += " active";
}
/********************************************************************EQUIPO ****************************************** */


function crearDiv(nombre, imagen, titulo, trabajos, frase) {
  nombre2 = document.createElement('h4');
  nombre2.innerHTML = nombre;
  imagen2 = document.createElement('img');
  imagen2.src = imagen;
  titulo2 = document.createElement('p');
  titulo2.innerText = titulo;
  trabajos2 = document.createElement('ul');
  trabajos2.innerHTML = trabajos;
  frase2 = document.createElement('p');
  frase2.innerText = frase;
  var div = document.createElement('div');

  div.appendChild(nombre2);
  div.appendChild(imagen2);
  div.appendChild(titulo2);
  div.appendChild(trabajos2);
  div.appendChild(frase2);
  document.getElementById('main').append(div);
  div.className = "item";



}


function crearDivs() {
  var main = document.createElement('div');
  main.id = "main";
  document.body.appendChild(main);

  for (let i = 0; i < size; i++) {

    var nombre = personas["persona"][i]["nombre"];
    var imagen = personas["persona"][i]["imagen"];
    var titulo = personas["persona"][i]["titulo"];
    var trabajos = "";
    var j = 0;
    var cantidadTrabajos = personas["persona"][i]["trabajos"].length;
    while (j < cantidadTrabajos) {
      trabajos = trabajos + "<li>" + personas["persona"][i]["trabajos"][j] + "</li>";
      j++;
    }
    var frase = personas["persona"][i]["frase"];
    crearDiv(nombre, imagen, titulo, trabajos, frase);


  }
  var footer2 = document.createElement('footer');
  footer2.innerHTML = foot;
  document.getElementById('main').insertAdjacentElement('afterend', footer2);

}


function footer() {

  var footer2 = document.getElementsByTagName('footer')[0];
  footer2.innerHTML=foot;
  document.getElementById('ifreme').insertAdjacentElement(footer2);
}
function footer2() {

  var footer2 = document.getElementsByTagName('footer')[0];
  footer2.innerHTML=foot;
  document.getElementsByTagName('article')[3].insertAdjacentElement(footer2);
}

/******************************************************************* INDEX ************************************************** */
function difuminar() {
  document.getElementById('ifreme').style.transition = "all .3s";
 

  document.getElementById('ifreme').style.backgroundColor = "rgba(255,255,255,.6)";

}
function difuminar2() {
  document.getElementById('ifreme').style.backgroundColor = "transparent";

}