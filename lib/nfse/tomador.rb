require 'mustache'

module Nfse
    module Envio

        class Tomador < Mustache
            attr_accessor :cnpj, :razao_social, :endereco, :endereco_numero,
                          :complemento, :bairro, :cod_cidade, :uf, :cep,
                          :telefone, :email


            def initialize(args)
                self.template_path = File.expand_path("../../templates/", __FILE__)
                
                @cnpj = args[:cnpj]
                @razao_social = args[:razao_social]
                @endereco = args[:endereco]
                @endereco_numero = args[:endereco_numero]
                @complemento = args[:complemento]
                @bairro = args[:bairro]
                @cod_cidade = args[:cod_cidade]
                @uf = args[:uf]
                @cep = args[:cep]
                @telefone = args[:telefone]
                @email = args[:email]
            end
        end

    end
end