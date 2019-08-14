require 'nfse_gem'

#wsdl = 'http://servicosweb.itabira.mg.gov.br:90/NFSe.Portal.Integracao.Teste/Services.svc?singleWsdl'
#puts Nfse::ConsultaLote.new(wsdl, '02395172000137', '12345678', '111111').consultar()


lote = Nfse::Envio::Lote.new( '5abc', 1, '02395172000137', '12345678', 1)
rps = Nfse::Envio::Rps.new(1, 1, 2)
lote.add_rps(rps)
puts lote.render
