module Nfse

    class Base < Mustache

        attr_accessor :code_ibge

        def get_wsdl
            {
                '3131703' => 'http://servicosweb.itabira.mg.gov.br:90/NFSe.Portal.Integracao.Teste/Services.svc?singleWsdl'
            }

        end
    end
end