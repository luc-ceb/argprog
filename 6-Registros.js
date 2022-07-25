// Registros

let torreAzadi = { nombre: "Torre Azadi", locacion: "Teherán, Irán", anioDeConstruccion:1971 };

let monumentoNacionalALaBandera = { nombre: "Monumento Nacional a la Bandera", locacion: "Rosario, Argentina", anioDeConstruccion: 1957 };

let tajMahal = { nombre: "Taj Mahal", locacion: "Agra, India", anioDeConstruccion: 1653 }
//tajMahal.locacion
//tajMahal.anioDeConstruccion


function fechaDeConstruccion(monumento) {
  return(monumento.nombre+" fue construido en el anio "+ monumento.anioDeConstruccion)
  
}

// Mover archivos
function moverArchivo(registro,nuevaruta){
  registro.ruta = nuevaruta;
}

//
function esDelMilenioPasado(archivo){
  return anio(archivo.creacion)<2000;
}

// Tipos de datos dentro de un registro
function masDificilDeCocinar(registro1,registro2){
  if (longitud(registro1.ingredientes) > longitud(registro2.ingredientes)){
    return registro1
    
  }
  else{
    return registro2
  }
}

