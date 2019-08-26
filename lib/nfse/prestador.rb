require 'mustache'

module Nfse
    module Envio

        class Prestador < Mustache
            attr_accessor :cnpj, :inscricao_municipal, :razao_social
            
            def initialize(args)
                self.template_path = File.expand_path("../../templates/", __FILE__)

                @cnpj = args[:cnpj]
                @inscricao_municipal = args[:inscricao_municipal]
                @razao_social = args[:razao_social]
            end
        end

    end
end        