module Bouba
  @salud=100
  
  def self.gritar
    "¡agrrrg!"
  end
  def self.salud
    @salud
  end
  def self.recibir_danio!(puntos)
    @salud =  [@salud-puntos * 2,0].max
  end
  def self.sabe_correr?
    false
  end
end


module Juliana
  @energia =1000
  def self.energia
    @energia
  end
 
  def self.atacar!(zombi,danio)
    zombi.recibir_danio!(danio)
  end
end

# Clases
class Zombi
  def initialize
    @salud = 100
  end
  
  def gritar
    "¡agrrrg!"
  end
  def salud
    @salud
  end
  def recibir_danio!(puntos)
    @salud =  [@salud-puntos * 2,0].max
  end
  def sabe_correr?
    false
  end

  def sin_vida?
    @salud == 0
  end
end

# Las clases sólo nos sirven para generalizar objetos que tengan el mismo comportamiento: mismos métodos y mismos atributos. 

# initialize. Al trabajar con clases tenemos que inicializar los atributos en algún lugar.

class Sobreviviente
  def initialize 
    @energia = 1000
  end
  def energia
    @energia
  end
  
  def atacar!(zombi,danio)
    zombi.recibir_danio!(danio)
  end
end

juliana = Sobreviviente.new
anastasia = Sobreviviente.new


# Constructor
class Zombi
  def initialize(salud_inicial)
    @salud = salud_inicial
  end
  
  def gritar
    "¡agrrrg!"
  end
  def salud
    @salud
  end
  def recibir_danio!(puntos)
    @salud =  [@salud-puntos * 2,0].max
  end
  def sabe_correr?
    false
  end

  def sin_vida?
    @salud == 0
  end
end

# Definir superzombi
class SuperZombi
  def initialize(puntos)
    @salud = puntos
  end  
  
  def salud
    @salud 
  end
  def sabe_correr?
    true
  end
  def recibir_danio!(puntos)
    @salud = [@salud-(puntos*3), 0].max
  end
  def gritar
    "¡agrrrg!"
  end
  def sin_vida?
    @salud == 0
  end
  def regenerarse!
    @salud = 100
  end
end


class Sobreviviente
  def initialize
    @energia = 1000
  end

  def energia
    @energia
  end
  
  def atacar!(zombie, danio)
    zombie.recibir_danio!(danio)
  end
 
  def ataque_masivo!(zombis)
    zombis.each{|zombi| atacar!(zombi,15)}
   @energia-=@energia/2
  end
  
  def beber!
    @energia+=@energia*0.25
  end

end


class Aliado
  def initialize
    @energia = 500
  end

  def energia
    @energia
  end
  
  def atacar!(zombie, danio)
    zombie.recibir_danio!(danio)
    @energia-=@energia*0.05
  end
 
  def ataque_masivo!(zombis)
    zombis.each{|zombi| atacar!(zombi,20)}
   @energia-=@energia/2
  end
  
  def beber!
    @energia+=@energia*0.1
  end

end

