require 'mustache'

module Nfse
    module Envio

        class Servico < Mustache
            attr_accessor :valor_total, :valor_imposto, :aliquota,
                          :codigo_servico, :codigo_cnae, :codigo_tributacao,
                          :descricao_servico, :codigo_municipio
        
            def initialize( valor_total, valor_imposto, aliquota,
                            codigo_servico, codigo_cnae, codigo_tributacao,
                            descricao_servico, codigo_municipio)
                
                self.template_path = File.expand_path("../../templates/", __FILE__)
                
                @valor_total = valor_total
                @valor_imposto = valor_imposto
                @aliquota = aliquota
                @codigo_servico = codigo_servico
                @codigo_cnae = codigo_cnae
                @codigo_tributacao = codigo_tributacao
                @descricao_servico = descricao_servico
                @codigo_municipio = codigo_municipio
            end
        end        

    end
end
