require 'mustache'
require 'savon'
module Nfse

    class ConsultaLote < Mustache
        attr_accessor :wsdl, :cnpj, :inscricao_municipal, :protocolo


        def initialize(wsdl, cnpj, inscricao_municipal, protocolo)
            self.template_path = File.expand_path("../../templates/", __FILE__)
            
            @wsdl = wsdl
            @cnpj = cnpj
            @inscricao_municipal = inscricao_municipal
            @protocolo = protocolo
        end

        def consultar()
            client = Savon.client(wsdl: @wsdl)            
            xml = self.render
            response = client.call(:consultar_lote_rps, xml: xml)
            data = response.body
            data = data[:consultar_lote_rps_response][:consultar_lote_rps_result]            

            xml_doc = Nokogiri::XML(data)
            return xml_doc.xpath("//MensagemRetorno").text()
        end

    end

end