class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def exibir_informacoes
    puts "#{@nome} tem #{@idade} anos."
  end
end

pessoa = Pessoa.new("Jorge", 40)
pessoa.exibir_informacoes
