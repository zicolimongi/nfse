module Nfse

    class Base < Mustache

        attr_accessor :code_ibge

        def get_wsdl
            {
                '3131703' => 'http://servicosweb.itabira.mg.gov.br:90/nfse.portal.integracao/services.svc?singleWsdl',                
                '3106200' => 'https://bhisshomologa.pbh.gov.br/bhiss-ws/nfse?wsdl'
            }

        end
    end
end