// Agregar y remover de una lista
function trasladar(lista1,lista2,elemento) {
  agregar(lista2, elemento)
  remover(lista1, elemento);
}

// Devuelve la ubicacion de un elemento si este existe en cierta lista. 
function contiene(lista , elemento){
  return posicion (lista, elemento) >=0
}

// Recorrer for lista
function saludar(personas) {
  for(let persona of personas){
    imprimir ("hola "+ persona);

  }
}
