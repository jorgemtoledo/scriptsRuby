# class Casa
#   def get_cor_da_parede
#     @cor_da_parede
#   end

#   def set_cor_da_parede(cor)
#     @cor_da_parede = cor
#   end
# end

# casa = Casa.new
# casa.set_cor_da_parede('azul')
# puts casa.get_cor_da_parede

# =======================================================================================

# class Casa
#   # Podemos alterar esse metodo para attr_reader :cor_da_parede
#   # def cor_da_parede
#   #   @cor_da_parede
#   # end

#   # Podemos alterar esse metodo para attr_writer :cor_da_parede
#   # def cor_da_parede=(cor)
#   #   @cor_da_parede = cor
#   # end

#   # attr_reader :cor_da_parede
#   # attr_writer :cor_da_parede

#   attr_accessor :cor_da_parede
# end

# casa = Casa.new
# casa.cor_da_parede = 'azul'
# puts casa.cor_da_parede

# =====================================================================

class Produto
  attr_reader :fabricante # Somente leitura
  attr_writer :preco # Somente escrita
  attr_accessor :nome, :codigo  # Leitura e escrita

  def initialize
    @fabricante = 'Apple'
    @codigo = 1234
  end

  celular = Produto.new

  # celular.fabricante = 'LG' # Tentando chamar o setter - Deu erro
  # puts celular.fabricante # Tentando chamar o getter - Deu certo

  # puts celular.preco = 1000 # Tentando chamar o setter - Deu certo
  # puts celular.preco # Tentando chamar o getter - Deu erro

  celular.nome = 'iPhone' # Tentando chamar o setter - Deu certo
  puts celular.nome # Tentando chamar o getter - Deu certo

  celular.codigo = 6789 # Tentando chamar o setter - Deu certo
  puts celular.codigo # Tentando chamdar o getter - Deu certo

end