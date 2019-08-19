module Nfse

    class ConsultaLote < Base
        attr_accessor :code_ibge, :cnpj, :inscricao_municipal, :protocolo


        def initialize(code_ibge, cnpj, inscricao_municipal, protocolo)
            self.template_path = File.expand_path("../../templates/", __FILE__)
            
            @code_ibge = code_ibge
            @cnpj = cnpj
            @inscricao_municipal = inscricao_municipal
            @protocolo = protocolo
        end

        def consultar()
            wsdl = get_wsdl[@code_ibge]
            client = Savon.client(wsdl: wsdl)            
            xml = self.render
            response = client.call(:consultar_lote_rps, xml: xml)
            data = response.body
            data = data[:consultar_lote_rps_response][:consultar_lote_rps_result]            

            xml_doc = Nokogiri::XML(data)
            return xml_doc.xpath("//MensagemRetorno").text()
        end

    end

end