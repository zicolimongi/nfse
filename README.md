# How to use 

## How send Nfse

#### Create  a RPS

```
require 'nfse_gem'

lote = Nfse::Envio::Lote.new( id: '5abc', 
                              numero_lote: 1, 
                              cnpj: '02395172000137', 
                              inscricao_municipal: '12345678', 
                              quantidade: 1)
rps = Nfse::Envio::Rps.new(numero: 1, serie: 1, tipo: 2)

prestador = Nfse::Envio::Prestador.new( 
                              cnpj: '12345678901234', 
                              inscricao_municipal: '12345678', 
                              razao_socuia: 'RazaoSocial')

tomador = Nfse::Envio::Tomador.new( cpf_cnpj: '35606203847', razao_social: 'Reinaldo',
                                    endereco: 'Rua dos Figos', endereco_numero: '96',
                                    complemento: 'N/A', bairro: 'Vila Maria', 
                                    cod_cidade: '3550308', uf: 'SP',
                                    telefone: '96838-9078', email: 'reinaldoacdc@gmail.com' )
                 
servico = Nfse::Envio::Servico.new( valor_total: 1050, 
                                    valor_imposto: 500, 
                                    aliquota: 5, 
                                    codigo_servico: '06.01', 
                                    codigo_cnae: '12345678', 
                                    codigo_tributacao: '6.01',
                                    descricao_servico: 'prestação de serviços', codigo_municipio: '3131703' )


rps.prestador = prestador
rps.tomador = tomador
rps.servico = servico

lote.add_rps(rps)

```
#### Send Nfse

``` 
enviar_lote = Nfse::EnviaLote.new('3131703', lote)
str = enviar_lote.enviar_lote_rps()
puts str

```


## Consult Nfse Status

```
require 'nfse_gem'

consulta_lote = Nfse::ConsultaLote.new('3131703', '12345678901234', '12345678', '111111')
puts consulta_lote.consultar()

```






# Generate Pdf File

```
require 'nfse_gem'

xml = File.read("nfe.xml")

danfe = Nfse::Pdf::DanfseGenerator.new(xml.to_s)
pdf = danfe.generatePDF

File.open('arquivo.pdf', 'w:binary') do |out|
    out.write(pdf)
  end
```

# TO-DO 
 -Load Certificate
 - CancelarNfse Event
 - Suportar more Providers