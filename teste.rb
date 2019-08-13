require 'nfse_gem'

wsdl = 'http://servicosweb.itabira.mg.gov.br:90/NFSe.Portal.Integracao.Teste/Services.svc?singleWsdl'

consulta_lote = Nfse::ConsultaLote.new(wsdl, '02395172000137', '12345678', '111111')
str = consulta_lote.consultar()
puts str