class Tempo
  # Metodo de class
  def self.agora
    Time.now
  end

  # Metodo de instancia
  def alguma_coisa
    puts "Funciona!"
  end

end

puts Tempo.agora
# tempo = Tempo.new
# tempo.alguma_coisa

Tempo.new.alguma_coisa