$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

module Nfse
    Envio = Module.new
    Envio.autoload(:Lote, './lib/nfse/lote.rb')   
    Envio.autoload(:Rps, './lib/nfse/rps.rb') 
    Envio.autoload(:Prestador, './lib/nfse/prestador.rb')
    Envio.autoload(:Tomador, './lib/nfse/tomador.rb')
    Envio.autoload(:Servico, './lib/nfse/servico.rb')
    
    autoload(:ConsultaLote, './lib/nfse/consultalote.rb')
end



