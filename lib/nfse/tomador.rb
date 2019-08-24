require 'mustache'

module Nfse
    module Envio

        class Tomador < Mustache
            attr_accessor :cpf_cnpj, :cpf, :cnpj, :razao_social, :endereco, :endereco_numero,
                          :complemento, :bairro, :cod_cidade, :uf, :cep,
                          :telefone, :email


            def initialize(args)
                self.template_path = File.expand_path("../../templates/", __FILE__)
                
                @cpf_cnpj = args[:cpf_cnpj]                
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

                self.cpf_cnpj()
            end

            def cpf_cnpj
                doc = @cpf_cnpj
                doc = doc.tr('.', '').tr('-', '')
                
                if doc.length == 14
                    @cnpj = doc
                else 
                    @cpf = doc
                end
            end 
        end

    end
end