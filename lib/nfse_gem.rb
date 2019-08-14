$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

module Nfse
    Envio = Module.new
    Envio.autoload(:Lote, './lib/nfse/lote.rb')   
    Envio.autoload(:Rps, './lib/nfse/rps.rb') 
    
    autoload(:ConsultaLote, './lib/nfse/consultalote.rb')
end



