# Coding: UTF-8

# Um exemplo de agenda
agenda = {
    Ana: '8888-9999',
    Pedro: '7878-8888'
}

while true
    puts ' '
    puts '1 - Adicionalr'
    puts '2 - Atualizar'
    puts '3 - Exibir'
    puts '4 - Excluir'

    print 'Escolha uma opção: '
    escolha = gets.chomp
    puts ' '

# Lendo e validando a escolha
    case escolha
        # Cadastrar
        when '1'
            print 'Insira o nome do contato: '
            nome = gets.chomp
            if agenda[nome.to_sym].nil?
                print 'Insira o telefone: '
                telefone = gets.chomp
                agenda[nome.to_sym] = telefone
            else
                puts 'Esse nome já existe'
            end

        # Atualizar
        when '2'
            puts 'Qual o nome que você deseja atualizar?'
            nome = gets.chomp
            if agenda[nome.to_sym].nil?
                puts 'Esse nome não existe'
            else
                print 'Qual o telefone?'
                telefone = gets.chomp
                agenda[nome.to_sym] = telefone
            end

        # Exibir
        when '3'
            agenda.each do |nome, telefone|
                puts "Nome: #{nome} - Telefone: #{telefone}"
            end

        # Excluir
        when '4'
            puts 'Qual o nome deseja excluir do sistema?'
            nome = gets.chomp
            if agenda[nome.to_sym].nil?
                puts 'Esse nome não existe'
            else
                agenda.delete(nome.to_sym)
                puts "#{nome} foi excluido!"
            end
        else
            puts 'Opção inválida!'
    end

end