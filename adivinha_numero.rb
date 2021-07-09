require_relative 'inicializacao'
class AdivinhaNumero
    attr_accessor :numero
    attr_reader :venceu

    def initialize
        Inicializacao.inicializando
        @numero = Random.rand(1..20)
        @venceu = false
    end

    def tentar_adivinhar(numero = 0)
        if numero == @numero
            @venceu = true
            return "VOCÊ VENCEU"
        elsif numero > @numero
            return "O número informado é muito alto..."
        else
            return "O número informado é muito baixo"
        end
    end
    
end