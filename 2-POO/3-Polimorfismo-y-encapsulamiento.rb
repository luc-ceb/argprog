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

  # 