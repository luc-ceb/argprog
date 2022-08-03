# Metodos esta_debil y esta_feliz
module Pepita
    @energia = 1000
  
    def self.energia
      @energia 
    end
  
    def self.volar_en_circulos!
      @energia -= 10
    end
    
    def self.comer_alpiste!(gramos)
      @energia += gramos * 15
    end  
  
    def self.debil?
      self.energia<100
    end
    
    def self.feliz?
      self.energia>1000
    end
  end

# Condicional, else y times (iteraciones)
module Pepita
  @energia = 1000

  def self.energia
    @energia 
  end

  def self.volar_en_circulos!
    @energia -= 10
  end
  
  def self.comer_alpiste!(gramos)
    @energia += gramos * 15
  end  

  def self.debil?
    self.energia<100
  end
  
  def self.feliz?
    self.energia>1000
  end
  
  def self.hacer_lo_que_quiera!
    if self.debil?
      self.comer_alpiste!(10)
    else
        if self.feliz?  
          5.times { self.volar_en_circulos! }
        else
          3.times { self.volar_en_circulos! }
        
        end
    end
  end
end


# Alternativa elsif
def self.nota_conceptual(nota)
  if nota > 8
    "Sobresaliente"
  else
    if nota > 6
      "Satisfactoria"
    else
      "No satisfactoria"
    end
  end
end


# Definir otro module
module Pepo
  @energia = 1000

  def self.energia
    @energia 
  end

  def self.volar_en_circulos!
    if self.energia>1100
      @energia -= 15
    else
      @energia -= 5
    end
  end
  
  def self.comer_alpiste!(gramos)
    @energia += gramos * 0.5
  end  

  def self.hacer_lo_que_quiera!
    self.comer_alpiste!(120)
  end
end

# Crear modulo de entrenamiento
module Pachorra
  @ave=Pepita
  def self.entrenar_ave!
    10.times{@ave.volar_en_circulos!}
    @ave.comer_alpiste!(30)
    5.times{@ave.volar_en_circulos!}
    @ave.hacer_lo_que_quiera!
  end
end
  

# Cambiar el objeto al que le enviamos mensajes, modificando el valor de un atributo

module Pachorra
  
  def self.firmar_contrato!(ave)
    @ave = ave
  end
  
  def self.entrenar_ave!
  10.times{@ave.volar_en_circulos!}
  @ave.comer_alpiste! (30)
  5.times{@ave.volar_en_circulos!}   
  @ave.hacer_lo_que_quiera!
  end
end

# Setters, modificamos atributos. 

module Pachorra
  def self.ave=(ave_nueva)
    @ave = ave_nueva
  end

  
  def self.entrenar_ave!
    10.times { @ave.volar_en_circulos! }
    @ave.comer_alpiste! 30
    5.times { @ave.volar_en_circulos! }
    @ave.hacer_lo_que_quiera!
  end
end

# Métodos que solo sirven para acceder o modificar un atributo los llamamos métodos de acceso o accessors.
# Setters son aquellos métodos que establecen el valor del atributo. Setters deben llevar el mismo nombre del atributo al que están asociados, agregando un = al final.
# Mientras que los getters son aquellos que devuelven el valor del atributo,si es booleano, llevan ? al final. Getters usan exactamente el mismo nombre que el atributo del cual devuelven el valor pero sin el @.

# Encapsulamiento
module Inodoro
  @cafeina_en_sangre = 90

  
  def self.cafeina_en_sangre
    @cafeina_en_sangre
  end 
  
  def self.compinche
    @compinche
  end
  
  def self.compinche=(nuevo_compa)
    @compinche = nuevo_compa
  end
end

module Eulogia
  @enojada = false
  
  def self.enojada?
    @enojada
  end
end

module Mendieta
  @ganas_de_hablar = 5
  
  def self.ganas_de_hablar
    @ganas_de_hablar
  end
  
  def self.ganas_de_hablar=(nuevas_ganas_de_hablar)
    @ganas_de_hablar = nuevas_ganas_de_hablar
  end
end


# Definir metodos tomar_mate y recibir_mate
module Inodoro
  @cafeina_en_sangre = 90
 
  
  def self.cafeina_en_sangre
    @cafeina_en_sangre
  end
  
  def self.compinche
    @compinche
  end
  def self.compinche=(com)
    @compinche = com
  end
  
  def self.tomar_mate!
    @cafeina_en_sangre += 10
    @compinche.recibir_mate!
  end
end

module Eulogia
  @enojada = false
  
  def self.enojada?
    @enojada
  end
  def self.recibir_mate!
    @enojada = true
  end
end

module Mendieta
  @ganas_de_hablar = 5
  
  def self.ganas_de_hablar
    @ganas_de_hablar 
  end
  def self.ganas_de_hablar=(num)
    @ganas_de_hablar = num
  end
  def self.recibir_mate!
    @ganas_de_hablar = 0
  end
end