require_relative 'adivinha_numero'
jogo = AdivinhaNumero.new

until jogo.venceu
    puts "Digite um númnero"
    numero = gets.to_i
    puts jogo.tentar_adivinhar(numero)
end