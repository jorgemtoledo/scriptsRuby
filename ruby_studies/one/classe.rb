# class Computer
#   def turn_on
#     'turn on the computer'
#   end
  
#   def shutdown
#     'shutdown the computer'
#   end
#  end

# computer = Computer.new
# puts computer.turn_on
# puts computer.shutdown


# ==============================================================================

# Herança

# class Animal 
#   def pular
#     puts 'Toing! tóim! bóim! póim!'
#   end
  
#   def dormir
#     puts 'ZzZzzz!'
#   end
#  end
  
#  class Cachorro < Animal
#   def latir
#     puts 'Au Au'
#   end
#  end
  
#  cachorro = Cachorro.new
#  cachorro.pular
#  cachorro.dormir
#  cachorro.latir

 # ==============================================================================

# Poliformismo

class Instrumento
  def escrever
    puts 'Escrevendo'
  end
end

class Teclado < Instrumento
  def escrever
    super
  end
end
 
class Lapis < Instrumento
  def escrever
    puts 'Escrevendo à Lápis'
  end
end
 
class Caneta < Instrumento
  def escrever
    puts 'Escrevendo à Caneta'
  end
end

teclado = Instrumento.new
lapis = Lapis.new
caneta = Caneta.new

puts "Lapis "
lapis.escrever
puts "caneta "
caneta.escrever
puts "teclado "
teclado.escrever
 
 
# instrumentos = [Lapis.new, Caneta.new]
# # Chamamos o método escrever pra qualquer instrumento
# Instrumentos.each do |instrumento|
#   Instrumento.escrever
# end