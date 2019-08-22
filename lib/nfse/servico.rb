require 'mustache'

module Nfse
    module Envio

        class Servico < Mustache
            attr_accessor :valor_total, :valor_imposto, :aliquota,
                          :codigo_servico, :codigo_cnae, :codigo_tributacao,
                          :descricao_servico, :codigo_municipio
        
            def initialize(args)
                
                self.template_path = File.expand_path("../../templates/", __FILE__)
                
                @valor_total = args[:valor_total]
                @valor_imposto = args[:valor_imposto]
                @aliquota = args[:aliquota]
                @codigo_servico = args[:codigo_servico]
                @codigo_cnae = args[:codigo_cnae]
                @codigo_tributacao = args[:codigo_tributacao]
                @descricao_servico = args[:descricao_servico]
                @codigo_municipio = args[:codigo_municipio]
            end
        end        

    end
end
