require 'mustache'

module Nfse
    module Envio

        class Prestador < Mustache
            attr_accessor :cnpj, :inscricao_municipal, :razao_social
            
            def initialize(cnpj, inscricao_municipal, razao_social)
                self.template_path = File.expand_path("../../templates/", __FILE__)

                @cnpj = cnpj
                @inscricao_municipal = inscricao_municipal
                @razao_social = razao_social
            end
        end

    end
end        