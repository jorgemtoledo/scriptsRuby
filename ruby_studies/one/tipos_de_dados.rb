# Tipo de dados
# Não existem tipos primitivos na linguagem Ruby, e todos os tipos são objetos. 
# A seguir estão alguns detalhes sobre os principais tipos.

=begin
  Integer
  A classe Integer representa valores numéricos inteiros. Essa é uma classe abstrata, 
  e não é possível instanciar objetos com ela, tanto que nem existe um método new no seu código. 
=end

=begin
  Fixnum
  Essa classe é uma das subclasses de Integer, ela representa números inteiros. 
  Quando digitamos um número inteiro no irb, automaticamente é instanciado um objeto Fixnum.  
=end

=begin
  Bignum
  A classe Bignum também é subclasse de Integer e ela armazena valores inteiros maiores que Fixnum. 
  O limite dos valores armazenados depende nesse caso da memória disponível. 
  Se os valores designados a uma variável do tipo Fixnum ultrapassarem o limite que o tipo suporta, 
  o Ruby automaticamente converterá a variável para o tipo Bignum.  
=end

=begin
  Float
  A classe Float deriva seu comportamento da classe Numeric e é usada para representar valores de ponto flutuante, 
  ou seja, números com valores fracionados, independentemente do tamanho desse número. Para separar a parte inteira da 
  fracionário usa-se o ponto e não virgula.  
=end

=begin
  String
  As String's armazenam cadeias ou conjuntos de caracteres, e são usadas constantemente para representar textos na aplicação.
  Em Ruby, as String’s vêm em dois tipos: as delimitadas por aspas simples e as delimitadas por aspas duplas, o conteúdo das que 
  são declaradas entre aspas simples é interpretado literalmente, já as delimitadas por aspas duplas podem conter expressões 
  que inferem para outras coisas.  
=end

=begin
  Boolean
  Tipo de dados usado para informar a veracidade de algo. Posui apenas dois estados, sendo true que é instância da classe TrueClass e 
  false que é intância da classe FalseClass.   
=end

=begin
  Array
  Um array é uma estrutura de dados para guardar uma coleção de objetos, que podem ser até de tipos diferentes. Cada elemento está associado 
  a um índice que inicia em 0, e pode ser usado para recuperar o elemento. Os elementos do array em Ruby são delimitados por colchetes e separados por (virgula).  
  array = [ 0, 1, 2]
 =end

=begin
  Symbol
  Símbolo é um tipo de dado semelhante a String, com a diferença de que ele é um objeto imutável. Duas strings idênticas podem ser objetos diferentes, mas um símbolo é apenas um objeto, ocupando sempre o mesmo espaço na memória.
  Um símbolo sempre é definido começando com dois pontos : seguido de seu nome.  
=end


=begin
Hash
O hash é uma estrutura semelhante ao array, pois também armazena uma coleção de informações ou elementos. 
Mas diferentemente do array, os elementos do hash não estão associados a um índice e sim a um objeto qualquer que funciona como uma chave. 
Os seus elementos são delimitados por “{}” (chaves).
  
=end


=begin
  Operadores Matemáticos
  + (Adição)
  – (Subtração)
  * (Multiplicação)
  / (Divisão)
  % (Módulo)
  ** (Expoente)  
=end


=begin
  Entrada e Saida
  # saída de dado
  print 'Digite seu nome: '
  
  # Recebendo uma entrada do teclado
  name = gets.chomp
  
  # saída utilizando puts
  # use códigos ruby dentro de uma string com #{code}
  puts "Hello #{name}!"
  
  ---------------------------------------------------------------

  print "Digite o primeiro número inteiro: "
  # .to_i transforma a string em um número inteiro
  number1 = gets.chomp.to_i
  
  print "Digite o segundo número inteiro: "
  
  
  number2 = gets.chomp.to_i
  
  addition = number1 + number2
  puts "O resultado da adição entre os dois números é #{addition}"
=end


=begin
  
=end

