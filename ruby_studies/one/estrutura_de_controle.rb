# Estrutura de controle

# IF
# day = 'Sunday' 
 
# if day == 'Sunday' 
#   lunch = 'special'
# end
 
# puts "Lunch is #{lunch} today"

# ===================================================

# Else
# day = 'Saturday' 
 
 
# if day == 'Sunday' 
#   lunch = 'special'
# else
#   lunch = 'normal'
# end
 
# puts "Lunch is #{lunch} today"

# ===================================================

# Elsif

# day = 'Holiday' 
 
# if day == 'Sunday' 
#   lunch = 'special'
# elsif day == 'Holiday'
#   lunch = 'later'
# else
#   lunch = 'normal'
# end
 
# puts "Lunch is #{lunch} today"

# ===================================================

# Unless

# product_status = 'closed'
 
# unless product_status == 'open'
#   check_change = 'can'
# else
#   check_change = 'can not'
# end
 
# puts "You #{check_change} change the product"

# ===================================================


# Case

# puts 'Digite o número do mês em que você nasceu?'
 
# month = gets.chomp.to_i
 
# case month 
# when 1..3
#   puts 'Você nasceu no começo do ano'
# when 9..12
#   puts 'Você nasceu no final do ano'
# when 4..6
#   puts 'Você nasceu na primeira metade do ano'
# when 7..9
#   puts 'Você nasceu na segunda metade do ano!'
# else 
#   puts 'Não foi possível identificar'
# end


# ===================================================

# Interações

# For
# fruits = ['Maçã', 'Uva', 'Morango']
 
# for fruit in fruits 
#   puts fruit
# end

# fruits = ['Maçã', 'Uva', 'Morango']
 
# fruit = "Laranja"
 
# for fruit in fruits 
#   puts fruit
# end
 
# puts fruit

# ===================================================

# While
# x = 1 
 
# while x < 10
#   puts x
#   # Adiciona + 1 ao valor de x
#   x += 1
# end

# ===================================================
# Do/While
# count = 1
# loop do 
#   puts count
#   break if count == 10
#   # Incrementa a variável count
#   count += 1
# end

# ===================================================

# Times
# 2.times do
#   puts 'Estou aprendendo times!'
# end
 
# names = ['João', 'Alfredo', 'Juca']
# # Igual ao array, o times começa com índice 0 
# 3.times do |index|
#   puts names[index]
# end

# ===================================================

# Iteração + Condicional

# result = ''
# loop do
#   puts result 
#   puts 'Selecione uma das seguintes opções'
#   puts '1- Descobrir a idade de uma pessoa'
#   puts '0- Sair'
#   print 'Opção: '
  
#   option = gets.chomp.to_i
  
#   if option == 1
#     print 'Digite o ano de nascimento: '
#     year_of_birth = gets.chomp.to_i
#     print 'Digite o ano atual: '
#     current_year = gets.chomp.to_i
#     age = current_year - year_of_birth
#     result = "Quem nasceu no ano de #{year_of_birth}, tem #{age} anos em #{current_year}"
#   elsif option == 0 
#     break if option == 0
#   else
#     result = 'Opção inválida'
#   end
#   # Comando que limpa o console
#   system "clear"
# end


# Calculadora

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