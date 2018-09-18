class Pessoa
  def definir_nome(novo_nome)
    # Variavel local novo_nome
    puts "O nome é #{novo_nome}"
    # Variavel de instancia @nome
    @nome = novo_nome
  end

  def exibir_informacoes
    puts "Nome: #{@nome}"
  end
end

pessoa = Pessoa.new
pessoa.definir_nome('Jorge')

pessoa.exibir_informacoes