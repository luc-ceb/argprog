// Practica 1
function cuantoCuesta(pulgadas,gigas){
  
  return 60*pulgadas + 200*gigas + 1000;
}

// Practica 2
function meConviene(pulgadas,gigas){
  
  return pulgadas>32 && gigas>8;
}

// Practica 3
function meConviene(pulgadas,gigas){
  return pulgadas>=32 && gigas>=8 && cuantoCuesta(pulgadas,gigas)<=6000;
}

// Practica Triangulos

function perimetroTriangulo(lado1,lado2,lado3){
  return lado1+lado2+lado3;
}

function areaTriangulo(base,altura){
  return base*altura/2;
}

// Practica Cuadrado

function perimetroCuadrado(lado){
  return lado*4;
}

function areaCuadrado(lado){
  return Math.pow(lado,2);
}

//Funcion booleana
function estaAfinado(frecuencia){
  return frecuencia===440;
}

// Concatenar strings
function escribirCartelito(titulo,nombre,apellido){
  return titulo+" "+nombre+" "+apellido;
}

//Booleano + condicional
function escribirCartelito(titulo,nombre,apellido,condicion){
  if (condicion) {
   return titulo+" "+apellido
} else {
   return titulo+" "+nombre+" "+apellido;
}
}

//Func. long como parametro
function escribirCartelitoOptimo(titulo,nombre,apellido){
  return escribirCartelito (titulo, nombre, apellido, longitud(nombre+apellido)>15)
}

// Decisor como param.
function decisionConMoneda(decisor,param1,param2){
  if (decisor==='cara') {
   return param1
} else {
   return param2;
}
}

// Valores envido
function valorEnvido(valorcarta){
  if (valorcarta<=7) {
   return valorcarta
} else if (valorcarta<=12 && valorcarta !==(8,9)){
   return 0
} 
}

//Valor mano envido
function puntosDeEnvidoTotales(valorcarta1,palo1,valorcarta2,palo2){
  if (palo1===palo2) {
   return valorEnvido(valorcarta1)+valorEnvido(valorcarta2)+20
} else{
   return Math.max(valorEnvido(valorcarta1),valorEnvido(valorcarta2))
} 
}

// Valores truco
function valorCantoTruco(valorcanto){
  if (valorcanto === 'truco') {
   return 2
} else if (valorcanto === 'retruco'){
   return 3 
} else if (valorcanto === 'vale cuatro'){
  return 4
}  else{
    return 'valor incorrecto'
  } 
}

