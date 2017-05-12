=begin
Script  adivinhe o numero.
O usuário tenta adininhar o numero que o computador está armazenando.
=end

# O jogo sempre será iniciado com a opcao recebendo s, para o inicio do jogo
opcao = "s"

  while opcao == "s"

  puts"Adivinhe o numero que estou pensando entre os numero 1 e 100"

  #Variavel que  recebe um numero que vem como String(Digitado pelo usuario) e converte em Integer
  seu_numero=gets.to_i

  #Variavel para gerar numero entre 1 e 100
  pc_numero = Random.rand(99) + 1


  #Variavel para armazenar o numero de tentativas
  tentativas =1

  while pc_numero != seu_numero
    if pc_numero > seu_numero
      puts "O numero é maior que #{seu_numero}"
    else
      puts "O numero é menor que #{seu_numero}"
    end
    tentativas +=1

    puts "Tente novamente: "
    seu_numero = gets.to_i
  end

  puts "Parabéns, o número era #{pc_numero}"
  puts "Voce usou #{tentativas} tentativas.."

  # Pergunta se o usuario vai querer continuar jogando.
  puts "Deseja jogar novamente? (s/n)"

  # O metodo chomp junto com o gets vai permitir que o usuario digite a opção e não pule uma linha
  opcao = gets.chomp

end

puts "Obrigado por jogar!"

