require 'mustache'
require 'savon'
require 'xmldsig'
require 'nokogiri'

module Nfse
    Envio = Module.new
    Envio.autoload(:Lote, './lib/nfse/lote.rb')   
    Envio.autoload(:Rps, './lib/nfse/rps.rb') 
    Envio.autoload(:Prestador, './lib/nfse/prestador.rb')
    Envio.autoload(:Tomador, './lib/nfse/tomador.rb')
    Envio.autoload(:Servico, './lib/nfse/servico.rb')
    
    Pdf = Module.new
    Pdf.autoload(:Document, './lib/danfe/document.rb')
    Pdf.autoload(:Descricao, './lib/danfe/descricao.rb')
    Pdf.autoload(:Helper, './lib/danfe/helper.rb')
    Pdf.autoload(:XML, './lib/danfe/xml.rb')
    Pdf.autoload(:DanfseGenerator, './lib/danfe/danfse_generator.rb')

    autoload(:Base, './lib/nfse/base.rb')
    autoload(:ConsultaLote, './lib/nfse/consultalote.rb')
    autoload(:EnviaLote, './lib/nfse/envialote.rb')
end



