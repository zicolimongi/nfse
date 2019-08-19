# Modo de uso 

## Envio da Nfse

#### Criação do Lote RPS

```
require 'nfse_gem'

wsdl = 'http://servicosweb.itabira.mg.gov.br:90/NFSe.Portal.Integracao.Teste/Services.svc?singleWsdl'

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

```
#### Envio do Lote

``` 
enviar_lote = Nfse::EnviaLote.new('3131703', lote)
str = enviar_lote.enviar_lote_rps()
puts str

```


## Consulta do Protocolo

```
require 'nfse_gem'

consulta_lote = Nfse::ConsultaLote.new('3131703', '12345678901234', '12345678', '111111')
puts consulta_lote.consultar()

```






# Geração do Pdf

```
require 'nfse_gem'

xml = File.read("nfse.xml")

danfe = Nfse::Pdf::DanfseGenerator.new(xml)
danfe.generatePDF("arquivo.pdf")
```

# TO-DO 

 - Evento de Cancelamento
 - Suportar mais provedores