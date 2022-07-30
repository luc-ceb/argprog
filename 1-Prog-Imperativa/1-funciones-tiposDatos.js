//definí ahora la función mitad, que tome un número por parámetro y retorne su mitad.
function mitad(numero) {
   return numero/2;
}

//Funciones-Uso 

function triple(numero) {
  return 3 * numero;
}

function anterior(numero) {
  return numero - 1;
}

function anteriorDelTriple(numero) {
   return anterior(triple(numero));
}

//Funciones math
Math.round(4.4)
Math.round(4.6)
Math.max(4,7)
Math.min(4,7)

// Math para poner tope
function extraer(saldo, monto) {
  return Math.max(saldo-monto, 0);
}

// Funcion booleana

function leGustaLeer(numero) {
  return numero > 20 ;
}

// Booleanos

function estaEntre(numero1,numero2,numero3) {
  return numero1 > numero2 && numero1<numero3 ;
}

function estaFueraDeRango(numero1,numero2,numero3) {
  return numero1 < numero2 || numero1>numero3 ;
}

// String
function esFinDeSemana(string1) {
  return string1 === "sábado" || string1 === "domingo" ;
}

// Longitud string
function longitudNombreCompleto(nombre,apellido) {
  return nombre.lenght + 1 + apellido.lenght;
}

// Funcion gritar
function gritar(nombre) {
  return "¡"+convertirEnMayuscula(nombre)+"!";
}

// Estructura de Control IF
//Equivalente a Math.abs
function maximo(Numero1,Numero2) {
   if (Numero1 > Numero2) {
     return Numero1;
   } else {
     return Numero2;
   }
}

// Condicional varias alternativas
function signo(numero) {
  if (numero > 0) {
    return 1;
  }  else  if (numero === 0) {
    return 0;
  } else {
    return -1;
  } 
}

// Retorno de booleano
function esNumeroDeLaSuerte(numeroSuerte) {
  return numeroSuerte < 100 && numeroSuerte > 0 && numeroSuerte !== 15;
}

// Condicional Varias Altenativas 2
function medallaSegunPuesto(numero) {
  if (numero === 1) {
    return "oro";
  }  else  if (numero === 2) {
    return "plata";
  } else  if (numero === 3) {
    return "bronce";
  } else {
    return "nada";
  } 
}


