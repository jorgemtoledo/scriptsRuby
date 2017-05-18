# Inicia o jogo
novo_jogo = "s"

while novo_jogo == "s"

    #Criando array (Lista) de palavras
    palavras = %w(cachorro gato banana huguinho zezinho)

    #Criando variavel para armazernar a palavra sorteada
    #Utilizando o metodo sample, ele vai escolher um elemento do array da variavel palavras e armazenar na variavel palavra_sorteada
    palavra_sorteada = palavras.sample

    # Tamanho da palavra_sorteada, cria uma variavel nova e utiliza o metodo size buscando a palavra armazenada na variavel palavra_sorteada.
    palavra_tamanho = palavra_sorteada.size


    puts "Jogo descubra a palavra: "

    # Criando um array vazio
    palavra_parcial = []

    #Adicionando elementos no array da variavel palavra_parcial, utilizando o metodo loop times
    palavra_tamanho.times do
        palavra_parcial << " _ "
    end

    # Imprime o valor atual do array palavra_parcial, e utiliza o join para remover "" e deixar um espaço entre os elementos
    puts palavra_parcial.join

    fim = false

    while fim == false
        puts "Escolha uma letra: "
        sua_letra = gets.chomp

        aux = 0

        palavra_sorteada.each_char do |letra_palavra|
            if palavra_parcial[aux] == " _ "
                if letra_palavra == sua_letra
                    palavra_parcial[aux] = sua_letra
                end
            end
            aux += 1
        end

        if palavra_parcial.join.count(" _ ") > 0
            fim = false
            puts palavra_parcial.join
        else
            fim = true
        end
    end

    puts "Parabens, voce acertou, a palavra era #{palavra_parcial.join}!"
    puts "Deseja jogar novamente? (s/n)"
    novo_jogo = gets.chomp
end

puts "Obrigadooo!!!"