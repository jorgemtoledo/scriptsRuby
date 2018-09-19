# class Usuario
#   attr_reader :senha

#   def gerar_senha
#     @senha = "#{hora_atual}#{rand(99)}"
#   end


#   # Defenindo metodo privado
#   private

#   def hora_atual
#     Time.now.hour
#   end
# end

# usuario = Usuario.new
# usuario.gerar_senha
# puts usuario.senha
# puts usuario.hora_atual

# ======================================================



class Sorteio
  def initialize(participantes)
    @participantes = participantes
  end

  def sortear
    return if @participantes.empty?

    sorteado = @participantes.sample
    puts "O participante sorteado foi: #{sorteado}!"

    remover_participante(sorteado)
  end

  private

  def remover_participante(participante)
    @participantes.delete(participante)
  end
end

participantes = ['Brunho', 'Gabriela', 'Leandro', 'Marcia']
sorteio = Sorteio.new(participantes)
sorteio.sortear

puts sorteio.remover_participante('Jorge')
