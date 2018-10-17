require 'rest-client'
require 'json'

# Crie um software que permita que o usuário entre com um texto, o idioma 
# em que o texto está escrito e também o idioma para qual ele deseja traduzir 
# o texto e receba como resposta na tela o texto traduzido.
class Translator

    def initialize
        interaction
        @url = 'https://translate.yandex.net/api/v1.5/tr.json/translate'
        @key = 'trnsl.1.1.20180923T180453Z.61805f17a0ea5944.82bd699c1f732790a3029b2cea41fa74d7753b37'
        @text = @text_word
        @lang = "#{@current_language}-#{@language_translate}"
    end

    def interaction
        system 'clear'
        print 'Digite o texto ou palavra que deseja traduzir: '
        @text_word = gets.chomp.to_s
        print 'Digite o idioma em que o texto ou palavra se encontra: '
        @current_language = gets.chomp.to_s.downcase
        print 'Digite o idioma que deseja traduzir: '
        @language_translate = gets.chomp.to_s.downcase
    end

    def translating
        response = RestClient.get(@url, params: {key: @key, text: @text, lang: @lang})
        @result = JSON.parse(response)["text"]
    end

    def show_in_terminal
        system 'clear'
        puts "********** Tradução **********" 
        puts "\n\n"
        puts @text_word
        puts @result
        puts "\n\n"
    end

    def save
        name_txt = Time.new.strftime('%d-%m-%y_%H:%M') + '.txt'
        File.open(name_txt, 'a') do |line|
            line.puts @lang
            line.puts @text_word
            line.puts @result
        end
        puts "Salvo com sucesso em .txt!"
    end

end

def start_translate
    loop do
        start = Translator.new
        start.translating
        start.show_in_terminal
        start.save
    
        puts "\n\n"
        print 'Sair? (S/N): '
        yes_no = gets.chomp.to_s.upcase
        if yes_no === 'S'
            system 'clear'
            break
        elsif yes_no === 'N'
            next
        end
    end
end