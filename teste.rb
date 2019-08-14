require 'nfse_gem'

wsdl = 'http://servicosweb.itabira.mg.gov.br:90/NFSe.Portal.Integracao.Teste/Services.svc?singleWsdl'
#puts Nfse::ConsultaLote.new(wsdl, '02395172000137', '12345678', '111111').consultar()


lote = Nfse::Envio::Lote.new( '5abc', 1, '02395172000137', '12345678', 1)
rps = Nfse::Envio::Rps.new(1, 1, 2)

prestador = Nfse::Envio::Prestador.new('02395172000137', '12345678', 'Razao Social')

tomador = Nfse::Envio::Tomador.new( cnpj: '35606203847', razao_social: 'Reinaldo',
                                    endereco: 'Rua dos Figos', endereco_numero: '96',
                                    complemento: 'N/A', bairro: 'Vila Maria', 
                                    cod_cidade: '3550308', uf: 'SP',
                                    telefone: '96838-9078', email: 'reinaldoacdc@gmail.com' )
                 
servico = Nfse::Envio::Servico.new( 1050, 500, 5, 
                                    '06.01', '12345678', '6.01',
                                    'prestação de serviços', '3131703' )


rps.prestador = prestador
rps.tomador = tomador
rps.servico = servico

lote.add_rps(rps)

enviar_lote = Nfse::EnviaLote.new(wsdl, lote)
str = enviar_lote.enviar_lote_rps()
puts str

