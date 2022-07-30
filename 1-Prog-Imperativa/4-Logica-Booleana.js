// Negar variable
let mochilaAbierta = true;


function usarCierre() {
  mochilaAbierta = !mochilaAbierta;
}

// Negar en base a una funcion
function esMayorDeEdad(edad) {
  return edad>=18;
}

function esMenorDeEdad(edad) {
  return !esMayorDeEdad(edad);
}

// Varias condiciones conjuntas
function esPeripatetico(profesion,nacionalidad,cantidadkm) {
  return profesion === "filósofo" && nacionalidad === "griego" && cantidadkm > "2";
}

// Funcion xor
function xor(booleano1,booleano2) {
  return booleano1!==booleano2;
}

// Precedencias Booleanos
function sePuedeConcentrar(infusion,temperatura,booleano) {
  return infusion === 'té' && temperatura >= 95 && booleano  || infusion === 'mate' && temperatura === 80 && booleano ;
}

function puedeSubirse(altura,acompaniada,afeccion) {
  return altura >= 1.5 && !acompaniada && !afeccion  || altura >= 1.2 && acompaniada && !afeccion ;
}

