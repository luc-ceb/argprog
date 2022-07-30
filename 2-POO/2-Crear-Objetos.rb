// Definir objeto
module Pepita
end

// Definir metodos
module Pepita
  def self.cantar!
  end
  
  def self.comer_lombriz!
  end
  
  def self.volar_en_circulos!
  end
end

// Atributos
module Pepita
    @energia = 100
  
    def self.volar_en_circulos!
        @energia  -= 10
    end
  
    def self.comer_lombriz!
        @energia  += 20
    end
end

// Ejemplo definicion de metodos y atributos
module Pepita
  @energia = 100
  @ciudad= Iruya

  def self.volar_en_circulos!
    @energia-=10
  end


  def self.comer_lombriz!
    @energia+=20
  end


  def self.volar_hacia!(destino)
    @ciudad=destino
    @energia-=100
  end
end

// Metodo de acceso de ciudad, sirven para conocer el valor de un atributo
module Pepita
  @energia = 100
  @ciudad = Obera
  
  def self.energia
    @energia 
  end
  
  def self.cantar!
    'pri pri pri'
  end
  
  def self.comer_lombriz!
    @energia += 20
  end
  
  def self.volar_en_circulos!
    @energia -= 10
  end
  
  def self.volar_hacia!(destino)
    @energia -= 100
    @ciudad = destino
  end
  
  def self.ciudad
    @ciudad
  end
end

// 11
module Obera
  def self.kilometro
    return 1040
  end
end

module Iruya
  def self.kilometro
    return 1710
  end  
end

module BuenosAires
  def self.kilometro
    return 0
  end
end

module Pepita
  @energia = 1000
  @ciudad = Obera
  
  def self.energia
    @energia 
  end
  
  def self.ciudad
    @ciudad
  end
  
  def self.cantar!
    'pri pri pri'
  end
  
  def self.comer_lombriz!
    @energia += 20
  end
  
  def self.volar_en_circulos!
    @energia -= 10
  end
  
  def self.volar_hacia!(destino)
    @energia -=  ((@ciudad.kilometro - destino.kilometro).abs) / 2
    @ciudad = destino
  end
end


// Delegar, metodos distancia a y gastar_energia
module Pepita
  @energia = 1000
  @ciudad = Obera
  
  def self.energia
    @energia 
  end
  
  def self.ciudad
    @ciudad
  end
  
  def self.cantar!
    'pri pri pri'
  end
  
  def self.comer_lombriz!
    @energia += 20
  end
  
  def self.volar_en_circulos!
    @energia -= 10
  end
  
  def self.volar_hacia!(destino)
    self.gastar_energia!(destino)
    @ciudad = destino
  end

  def self.distancia_a(destino)
   (@ciudad.kilometro - destino.kilometro).abs
  end
  
  def self.gastar_energia!(destino)
   @energia -= (distancia_a(destino).abs / 2)
 end
end
