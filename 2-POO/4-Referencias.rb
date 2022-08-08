# Con saludo = "hola" lo que hacemos es crear una referencia saludo que apunta al objeto "hola".
# Y con saludo.upcase, lo que hacemos es enviarle el mensaje upcase al objeto hola mediante la referencia
# saludo, que es una variable.
# Ejemplo: creá una variable llamada despedida que apunte al objeto "adiós", y luego enviale el mensaje size().
despedida = "adiós"
despedida.size()


# El mensaje == nos permite comparar dos objetos por equivalencia; lo cual se da típicamente cuando los objetos tienen el mismo estado.
# Sirve para forma de saber si dos strings representan la misma secuencia de caracteres más allá de que no sean el mismo objeto

# Definí un objeto AbuelaClotilde que entienda un mensaje alimentar_nieto!, que haga comer! 2 veces a Fito: primero con 2000 calorias, 
y luego con 1000 calorías
module AbuelaClotilde
    def self.alimentar_nieto!
     Fito.comer!(2000)
     Fito.comer!(1000)
    end
end

# Objetos compartidos
# Fito también tiene un amigo, Juli. Juli es nieto de AbueloGervasio. Cuando Juli es feliz Fito es feliz
module Fito
  def self.amigo=(un_amigo)
    @amigo = un_amigo
  end

  def self.es_feliz_como_su_amigo?
    @amigo.felicidad > 105
  end
end

# Creá un programa que inicialice al amigo de Fito y al nieto de AbueloGervasio de forma que ambos conozcan al mismo objeto (Juli).
#Luego, hacé que el abuelo alimente a su nieto 3 veces.
# ¿Qué pasará con Fito? ¿Se pondrá feliz?

#Juli, Fito y AbueloGervasio ya están declarados.
#Inicializalos y enviales mensajes acá...
Fito.amigo = Juli
AbueloGervasio.nieto = Juli
3.times{AbueloGervasio.alimentar_nieto!}
Fito.es_feliz_como_su_amigo?

# Juli es un objeto compartido: tanto el abuelo como su amigo lo conocen. La consecuencia de esto es que cuando su abuelo le da de comer 
# le aumenta la felicidad, y su amigo ve los cambios: éste método que antes devolvía false, ahora devuelve true.

# Y esto tiene sentido: si un objeto muta su estado, y lo expone de una u otra forma a través de mensajes, todos los que lo observen podrán ver el cambio.

