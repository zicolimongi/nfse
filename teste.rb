require 'nfse_gem'

xml = File.read("nfse.xml")

danfe = Nfse::Pdf::DanfseGenerator.new(xml)
danfe.generatePDF("arquivo.pdf")
