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