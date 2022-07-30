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

