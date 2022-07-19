// Ejemplo procedimiento
function versosMartinFierro() {
    imprimir("Aquí me pongo a cantar");
    imprimir("Al compás de la vigüela;");
    imprimir("Que el hombre que lo desvela");
    imprimir("Una pena extraordinaria");
}


// Return convierte a string
function elefantesEquilibristas(numero) {
    return numero +" elefantes se balanceaban";

}

// Funciones area y perimetro de un circulo
function perimetroCirculo(radio) {
    return radio*2*3.14159265358979;

}

function areaCirculo(radio) {
    return radio*radio*3.14159265358979;

}

// Utilizacion de variables
let pi = 3.14159265358979;

function perimetroCirculo(radio) {
    return radio*2*pi;

}

function areaCirculo(radio) {
    return radio*radio*pi;

}

// Var. global
let pesoPromedioPersonaEnKilogramos = 50
let cargaMaximaEnKilogramos = 300;

function ascensorSobrecargado(cantpersonas) {
  return cantpersonas*pesoPromedioPersonaEnKilogramos > cargaMaximaEnKilogramos;
}

// Modificar Var. globales
function aumentarFortuna() {
  pesosEnMiBilletera *= 2
}

//