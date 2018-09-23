=begin
  Collections
  Collection representa um conjunto de dados semelhantes em uma única unidade.
  As coleções no Ruby permitem a organização de grandes quantidades de dados, a maioria dos quais você acabará passando.

  Array

  estados = []
  estados.push('Espírito Santo')
  estados.push('Minas Gerais', 'Rio de Janeiro', 'São Paulo')
  
  Insert defindo o local 
  estados.insert(0, 'Acre', 'Amapá')

  
  Acessando elementos
  estados[1]
  estados[2..5]
  estados[-2]
  estados[-3..-1]
  estados.first
  estados.last

  Obtendo informações
  estados.count
  estados.length
  estados.empty?

  Verifique se um item específico está presente no array
  estados.include?('São Paulo')

  Excluindo elementos
  estados.delete_at(2)

  Exclua o ultimo item do array estados
  estados.pop

  Para excluir o primeiro item faça
  estados.shift


  ================================================

  Hash

  Criando hash
  capitais = Hash.new ou capitais = {}

  capitais = { acre: 'Rio Branco', sao_paulo: 'São Paulo'}
  hash = {1 => 'Chave do tipo inteiro', true => 'Chave do tipo booleano, [1,2,3] => 'Chave do tipo array'}

  capitais[:minas_gerais] = "Belo Horizonte"
  capitais[:minas_gerais]
  capitais.keys
  capitais.values
  capitais.delete(:acre)

  capitais.size

  capitais.empty?


=end

# Interações

=begin
  Each
  Percorre uma coleção de forma parecida ao for, porém, não sobrescrevendo o valor de variáveis fora da estrutura de repetição.
=end

# names = ['Joãozinho', 'Manoel', 'Juca']
 
# name = 'Jorge Toledo'
 
# names.each do |name|
#  puts name 
# end
 
# puts name

# aulas = {'Aula 1 ' => 'liberada', 'Aula 2 ' => 'liberada', 'Aula 3 ' => 'liberada', 'Aula 4 ' => 'liberada', 'Aula 5 ' => 'em breve'}
 
# aulas.each do |key, value|
#  puts "#{key} #{value}"
# end

=begin
  Map
  Cria um array baseando-se em valores de outro array existente.
=end

array = [1, 2, 3, 4]
 
# \n é uma quebra de linha 
# puts "\n Executando .map multiplicando cada item por 2"
# # .map não altera o conteúdo do array original
# new_array = array.map do |a| 
#   a * 2
# end
 
# puts "\n Array Original"
# puts " #{array}"
 
# puts "\n Novo Array"
# puts " #{new_array}"
 
# puts "\n Executando .map! multiplicando cada item por 2"
# # .map! força que o conteúdo do array original seja alterado
# array.map! do |a| 
#  a * 2
# end
 
# puts "\n Array Original"
# puts " #{array}"
# puts ''




=begin
  Select
  Realiza uma seleção de elementos presentes em uma collection através de uma condição pré definida. 
  Traz como resultado somente os valores que passam nesta condição.
=end

# array = [1, 2, 3, 4, 5, 6]
 
# selection = array.select do |a|
#   a >= 4
# end
 
# puts selection


# hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}
 
# puts 'Selecionando keys com valor maior que 0'
# selection_key = hash.select do |key, value|
#   key > 0
# end
 
# puts selection_key

# Calculadora da aula anterior

result = ''
loop do
 puts result 
 puts 'Selecione uma das seguintes opções'
 puts '1- Adicionar'
 puts '2- Subtrair'
 puts '3- Multiplicar'
 puts '4- Dividir'
 puts '0- Sair'
 print 'Opção: '
 
 option = gets.chomp.to_i
 
 case option 
 when 1..4
   print 'Digite o primeiro número: '
   number1 = gets.chomp.to_i
   
   print 'Digite o segundo número: '
   number2 = gets.chomp.to_i
   case option 
   when 1
     result = "#{number1} + #{number2} = #{number1 + number2}"
   when 2
     result = "#{number1} - #{number2} = #{number1 - number2}"
   when 3
     result = "#{number1} * #{number2} = #{number1 * number2}"
   when 4
     result = "#{number1} / #{number2} = #{number1 / number2}"
   end
 when 0
   break
 else 
   result = 'Opção inválida'
 end
 # Comando que limpa o console
 system "clear"
end