require 'mustache'

module Nfse
    module Envio

        class Servico < Mustache
            attr_accessor :valor_total, :valor_imposto, :aliquota,
                          :codigo_servico, :codigo_cnae, :codigo_tributacao,
                          :descricao_servico, :codigo_municipio
        
            def initialize(args)
                
                self.template_path = File.expand_path("../../templates/", __FILE__)
                
                @valor_total = formatted_value(args[:valor_total])
                @valor_imposto = formatted_value(args[:valor_imposto])
                @aliquota = args[:aliquota]
                @codigo_servico = args[:codigo_servico]
                @codigo_cnae = args[:codigo_cnae]
                @codigo_tributacao = args[:codigo_tributacao]
                @descricao_servico = args[:descricao_servico]
                @codigo_municipio = args[:codigo_municipio]
            end

            #1.500,20 => 1500.20
            def formatted_value(value)
                return value.sub('.', '').sub(',', '.')
            end
        end        

    end
end
