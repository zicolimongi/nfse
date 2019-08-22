require 'mustache'

module Nfse
    module Envio

        class Rps < Mustache
            attr_accessor :numero, :serie, :tipo, 
                          :prestador, :tomador, :servico,
                          :data_emissao, :data_competencia,
                          :regime_tributacao, :icentivo_fiscal, :simples_nacional

            def initialize(args)
                self.template_path = File.expand_path("../../templates/", __FILE__)
                
                @numero = args[:numero]
                @serie = args[:serie]
                @tipo = args[:tipo]
                @data_emissao = args[:data_emissao]
                @data_competencia = args[:data_competencia]
                @regime_tributacao = args[:regime_tributacao]
                @icentivo_fiscal = args[:icentivo_fiscal]
                @simples_nacional = args[:simples_nacional]
            end

        end

    end
end