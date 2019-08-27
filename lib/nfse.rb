$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'mustache'
require 'savon'
require 'xmldsig'
require 'nokogiri'
module Nfse
    Envio = Module.new
    Envio.autoload(:Lote, 'nfse/lote.rb')   
    Envio.autoload(:Rps, 'nfse/rps.rb') 
    Envio.autoload(:Prestador, 'nfse/prestador.rb')
    Envio.autoload(:Tomador, 'nfse/tomador.rb')
    Envio.autoload(:Servico, 'nfse/servico.rb')
    
    Pdf = Module.new
    Pdf.autoload(:Document, 'danfe/document.rb')
    Pdf.autoload(:Descricao, 'danfe/descricao.rb')
    Pdf.autoload(:Helper, 'danfe/helper.rb')
    Pdf.autoload(:XML, 'danfe/xml.rb')
    Pdf.autoload(:DanfseGenerator, 'danfe/danfse_generator.rb')

    autoload(:Base, 'nfse/base.rb')
    autoload(:ConsultaLote, 'nfse/consultalote.rb')
    autoload(:EnviaLote, 'nfse/envialote.rb')
end



