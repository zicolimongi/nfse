require 'mustache'

module Nfse
    module Envio

        class Rps < Mustache
            attr_accessor :numero, :serie, :tipo, 
                          :prestador, :tomador

            def initialize(numero, serie, tipo)
                self.template_path = File.expand_path("../../templates/", __FILE__)
                
                @numero = numero
                @serie = serie
                @tipo = tipo
            end

        end

    end
end