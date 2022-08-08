# Herencia

class Dispositivo

  def initialize
    @bateria = 100
  end
  def cargar_a_tope!
    @bateria=100
  end
end

class Celular < Dispositivo
  def utilizar! (minutos)
    @bateria -= minutos/2
  end

end

class Notebook < Dispositivo
 
  def utilizar! (minutos)
    @bateria-= minutos
  end
  
end

class MedioDeTransporte
  def initialize(litros)
    @combustible = (litros)
  end
  def cargar_combustible!(unos_litros)
    @combustible += (unos_litros)
  end
  def entran?(unas_personas)
    unas_personas <= maximo_personas
  end
end

class Auto < MedioDeTransporte
  def maximo_personas
     5
  end
  def recorrer!(km)
    @combustible -= km / 2
  end
end

class Moto < MedioDeTransporte
  def maximo_personas
    2
  end
  def recorrer!(km)
    @combustible -= km
  end
end

class Colectivo < MedioDeTransporte
    def maximo_personas
        20 
    end

    def recorrer!(kilometros)
        @combustible -= kilometros *2 
    end
end


class Colectivo < MedioDeTransporte
    def initialize
      @combustible = 100
      @pasajeros = 0
    end
  
    def entran?(pasajeros)
      true
    end
  
  
    def maximo_personas
        20 
    end

    def recorrer!(kilometros)
        @combustible -= kilometros *2 
    end
end

# Super
class Colectivo < MedioDeTransporte
    def initialize
      @combustible = 100
      @pasajeros = 0
    end
  
    def entran?(pasajeros)
      true
    end
  
  
    def maximo_personas
        20 
    end

    def recorrer!(kilometros)
        @combustible -= kilometros *2 
    end
  
    def cargar_combustible!(combustible)
      super 
      @pasajeros=0
    end
end

class Persona
  def energia
    @energia
  end  
  def atacar!(zombi, danio)
    zombi.recibir_danio! danio
  end
end  
  
class Sobreviviente < Persona
  def initialize
    @energia = 1000
  end
  
  def beber!
    @energia *= 1.25
  end
end

class Aliado < Persona
  def initialize
    @energia = 500
  end

  def beber!
    @energia *= 1.10
  end

  def atacar!(zombi, danio)
    super
    @energia *= 0.95
  end
end
