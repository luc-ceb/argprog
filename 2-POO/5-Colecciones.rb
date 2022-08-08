# Crar objetos

module CarlosDuty
  @cantidad_logros= 0
  
  def self.dificultad
    30 - @cantidad_logros * 0.5
  end

  def self.violento?
    true
  end


  def self.jugar!(un_tiempo)
    if un_tiempo > 2
      @cantidad_logros += 1
    end
  end
end

module TimbaElLeon
  @dificultad = 25
  
  def self.violento?
    false
  end
  
  def self.dificultad
    @dificultad
  end
  
  def self.jugar!(un_tiempo)
    @dificultad += un_tiempo
  end
end

module Metroide
  
  @nivel_espacial = 3

  def self.jugar! (veces_jugado)
   @nivel_espacial +=  1
  end 


  def self.dificultad
    100
  end

  def self.violento?
    if @nivel_espacial > 5
      true
    end
  end
end

#lista de objetos: es un tipo de colección en la cual los elementos pueden repetirse
module Juegoteca 
  @juegos= [CarlosDuty,TimbaElLeon,Metroide]
  
  def self.juegos
    @juegos
  end
  
end

# consultas sobre colecciones
numeros_de_la_suerte = [6, 7, 42]
numeros_de_la_suerte.push 10
numeros_de_la_suerte.delete 10
numeros_de_la_suerte.include? 10
numeros_de_la_suerte.size

# Sets: No admiten elementos repetidos, sus elementos no tienen un orden determinado.
numeros_aleatorios = [1,27,8,7,8,27,87,1]
numeros_aleatorios.to_set

module Juegoteca 
  @juegos= [CarlosDuty,TimbaElLeon,Metroide]
  @puntos = 0
  def self.juegos
    @juegos
  end
  
  def self.puntos
    @puntos
  end
  
  def self.adquirir_juego!(un_juego)
    @juegos.push un_juego
    @puntos+=150
  end
  
  def self.borrar_juego!(un_juego)
    @juegos.delete un_juego
  end
  
  def self.completa?
    @puntos > 1000 && @juegos.size > 5
  end
   
    def self.juego_recomendable? (un_juego)
    (!@juegos.include? un_juego) && (un_juego.violento?)
    end
  
end

# bloques son objetos que representan un mensaje o una secuencia de envíos de mensajes, sin ejecutar
# también pueden recibir argumentos para su aplicación

jugar_a_timba = proc { |minutos| TimbaElLeon.jugar!(minutos/60)}

# Select recibe un bloque con un parámetro que representa un elemento de la colección y una condición booleana como código, y lo que devuelve es una nueva colección con los elementos que la cumplen.
module Juegoteca 
  @juegos= [CarlosDuty,TimbaElLeon,Metroide]
  
  def self.juegos
    @juegos
  end
  
  def self.juegos_violentos
    juegos_violentos = juegos.select { |un_juego| un_juego.violento?}
  end
  
end

# Mientras que select devuelve una colección, find devuelve únicamente un elemento.
module Juegoteca 
  @juegos= [CarlosDuty,TimbaElLeon,Metroide]
  
  def self.juegos
    @juegos
  end
  
  def self.juego_mas_dificil_que(una_dificultad)
    @juegos.find{|juego| juego.dificultad>una_dificultad}
  end
  
end

# Para saber si todos los elementos de una colección cumplen un cierto criterio podemos usar el mensaje all?, que también recibe un bloque.
module Juegoteca 
  @juegos= [CarlosDuty,TimbaElLeon,Metroide]
  
  def self.juegos
    @juegos
  end
  
  def self.mucha_violencia?
    mucha_violencia= @juegos.all?{|juego|juego.violento?}
  end
  def self.muy_dificil?  
    @juegos.any?{|juego|juego.dificultad>25  }
  end 
  
end

#Mientras que select devuelve una colección y find un elemento o nil, all? y any? siempre devuelven un valor booleano: true o false.

# El mensaje map nos permite, a partir de una colección, obtener otra colección con cada uno de los resultados que retorna un envío de mensaje a cada elemento.
module Juegoteca
  @juegos=[CarlosDuty,TimbaElLeon,Metroide]
  def self.juegos
    @juegos
end
  def self.juegos_violentos
  juegos_violentos=@juegos.select{|juegos| juegos.violento?}
  end
  def self.dificultad_violenta
  juegos_violentos.map{|juegos_violentos| juegos_violentos.dificultad}
  end
end

# COUNT y SUM
module Juegoteca 
  @juegos= [CarlosDuty,TimbaElLeon,Metroide]
  
  def self.juegos
    @juegos
  end
  
  def self.juegos_violentos
    juegos_violentos = juegos.select { |un_juego| un_juego.violento?}
  end
  
  def self.promedio_de_violencia
    violentos = (juegos_violentos.sum { |un_juego| un_juego.dificultad }) / (juegos_violentos.count { |un_juego| un_juego.violento? })
  end
end

# A diferencia del map, no nos interesan los resultados de enviar el mismo mensaje a cada objeto, sino mandarle un mensaje a cada uno con la intención de producir un efecto.
#Es en este caso que nos resulta de utilidad el mensaje each.

# Definí el método jugar_a_todo! en la Juegoteca, que haga jugar a cada uno de los juegos durante 5 horas. Recordá que los juegos entienden jugar!(un_tiempo).
module Juegoteca
  @juegos = [CarlosDuty, TimbaElLeon, Metroide]
  def self.juegos
    @juegos
  end
  
  def self.jugar_a_todo!
    @juegos.each { |juego| juego.jugar!(5) }
  end
end

