# Definindo uma função para o jogo
def calcula_vencedor(escolha, pc_escolha)
    resultado = (escolha - pc_escolha) % 3
    if resultado == 1
        puts 'Você ganhou!'
    elsif resultado == 2
        puts 'PC ganhou!'
    else
        puts 'Deu empate'
    end
end

# Criando uma lista de opções com hashes
opcoes = {
    1 => 'Pedra',
    2 => 'Papael',
    3 => 'Tesoura'
}

# Iniciar o jogo
novo_jogo = 's'

while novo_jogo == 's'

    opcoes.each do |k,v|
        puts "#{k} - #{v}"
    end

    print 'Escolha uma opção acima: '
    escolha = gets.to_i

    while opcoes[escolha].nil?
        print 'Opção invalida! Escolha novamente: '
        escolha = gets.to_i
    end

    # Opçao do computador, utilizando o metodo Random
    pc_escolha = Random.rand(3) + 1

    puts "\nVocê escolheu #{opcoes[escolha]}"
    puts "O pc escolheu #{opcoes[pc_escolha]}\n"

    # Utilizando uma função, e impirmindo
    print calcula_vencedor(escolha, pc_escolha)

    print "\n\nDeseja jogar novamente? (s/n): "
    novo_jogo = gets.chomp
end

puts 'Obrigadooo...'