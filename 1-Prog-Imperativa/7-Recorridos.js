// for..of
function gananciaTotal(balancesDeUnPeriodo) {
  let sumatoria = 0;
  for (let balance of balancesDeUnPeriodo) {
    sumatoria = sumatoria + balance.ganancia;
  }
  return sumatoria;
}

gananciaTotal([
    { mes: "noviembre", ganancia: 5 }
   ])

gananciaTotal([
    { mes: "enero", ganancia: 2 }, 
    { mes: "febrero", ganancia: 10 }, 
    { mes: "marzo", ganancia: -20 }, 
    { mes: "abril", ganancia: 0 }, 
    { mes: "mayo", ganancia: 10 }
   ])

// contador
function cantidadDeBalancesPositivos(balancesDeUnPeriodo) {
  let cantidad = 0;
  for (let balance of balancesDeUnPeriodo) {
    if (balance.ganancia>0){
      cantidad +=1
    }
  }
  return cantidad;
}

// Promedio
function gananciaPromedio(balancesDeUnPeriodo) {
  let cantidadTotal = gananciaTotal(balancesDeUnPeriodo);
  let promedio =0;
  
  promedio = cantidadTotal/longitud(balancesDeUnPeriodo)
  return promedio;
}

// funciones promedio y sumatoria
function promedio(listaDeNumeros) {
    return sumatoria(listaDeNumeros) / longitud(listaDeNumeros);
}

function sumatoria(listaDeNumeros) {
  let sumatoria = 0;
  for (let numero of listaDeNumeros) {
    sumatoria = sumatoria + numero;
  }
  return sumatoria;
}

// Agregar a una lista
function ganancias(balancesDeUnPeriodo) {
  let ganancias = [];
  for (let balance of balancesDeUnPeriodo) {
    agregar(ganancias,balance.ganancia )
  }
  return ganancias;
}

// toma los balances de un período y devuelve una lista con aquellos cuya ganancia fue mayor a cero.
function balancesPositivos(balancesDeUnPeriodo) {
  let balances = [];
  for (let balance of balancesDeUnPeriodo) {
    if(balance.ganancia >0){
      agregar(balances,balance)
    }
  }
  return balances;
}

// Definí la función gananciasDeBalancesPositivos y luego usala junto a promedio para definir promedioDeBalancesPositivos.

function gananciasDeBalancesPositivos(balancesPositivos){
  let ganancias=[]
  for (let balance of balancesPositivos){
    if(balance.ganancia>0)
      agregar(ganancias,balance.ganancia)
  }
  return ganancias;
}

function promedioDeBalancesPositivos(balancesDeUnPeriodo){
  return promedio(gananciasDeBalancesPositivos(balancesDeUnPeriodo))
}

// maximo usando funciones ganancias y maximo
function maximaGanancia(balancesDeUnPeriodo) {
  return maximo(ganancias(balancesDeUnPeriodo)) ;
  
}

// minimo usando funciones minimo y gananciasDeBalancesPositivos
function minimaGananciaPositiva (balancesDeUnPeriodo) {
  return minimo(gananciasDeBalancesPositivos(balancesDeUnPeriodo)) ;
  
}


// Definí las funciones meses, afortunados, mesesAfortunados.

function meses(listaDeBalances){
  let meses = [];
  for (let mess of listaDeBalances) {
    agregar(meses,mess.mes)
  }
  return meses;
}
function afortunados(lista){
  let afortunados = []
  for(let registro of lista) {
    if(registro.ganancia>1000){agregar(afortunados, registro)}
  }
  return afortunados;
}
function mesesAfortunados(lista){
  return meses(afortunados(lista));
}
