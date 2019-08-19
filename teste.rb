require 'nfse_gem'

wsdl = 'http://servicosweb.itabira.mg.gov.br:90/NFSe.Portal.Integracao.Teste/Services.svc?singleWsdl'
consulta_lote = Nfse::ConsultaLote.new('3131703', '12345678901234', '12345678', '111111')

puts consulta_lote.consultar()