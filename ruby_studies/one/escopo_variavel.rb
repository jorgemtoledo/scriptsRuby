# class Bar
#   def foo
#     # Pode ser definida como local ou _local 
#     local = 'Variavel local: local é acessada apenas dentro deste metodo'
#     print local
#   end
#  end
  
#  bar = Bar.new
#  bar.foo

# =============================================================================
# Variavel Global

# class Bar
#   def foo
#     $global = 0
#     puts $global
#   end
#  end
  
#  class Baz
#   def qux
#     $global += 1
#     puts $global
#   end
#  end
  
#  bar = Bar.new
#  baz = Baz.new
#  bar.foo
#  baz.qux
#  baz.qux
#  puts $global

# =============================================================================
# Variavel de classe

# class User
#   @@user_count = 0
#   def add(name)
#     puts "User #{name} adicionado"
#     @@user_count += 1
#     puts @@user_count
#   end
#  end
  
#  first_user = User.new
#  first_user.add('João')
  
#  second_user = User.new
#  second_user.add('Mario')


# =============================================================================
# Variavel de instancia

#  class User
#   def add(name)
#     @name = name
#     puts "User adicionado"
#     hello
#   end
  
#   def hello
#     puts "Seja bem vindo, #{@name}!"
#   end
#  end
  
#  user = User.new
#  user.add('Jorge')

# =============================================================================
# Atributos

# class Dog 
#  def name
#    @name
#  end
 
#  def name= name
#    @name = name
#  end
# End
 
# dog = Dog.new 
# dog.name = 'Jorge' 
# puts dog.name

# class Dog 
#  attr_accessor :name, :age
# end
 
 
# dog = Dog.new 
 
# dog.name = 'Marlon'
# puts dog.name
 
# dog.age = '1 ano'
# puts dog.age

# =============================================================================
# Initialize

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Name = #{@name}"
    puts "Idade = #{@age}"
  end
 end
  
 person = Person.new('João', 12)
 person.check