Gem::Specification.new do |s|
    s.authors = ["Reinaldo ACDC"]
    s.name = %q{nfse_gem}
    s.version = "0.0.0"
    s.date = %q{2011-09-29}
    s.summary = %q{nfse_gem is the best}
    s.files = [
      "lib/nfse_gem.rb"
    ]
    s.require_paths = ["lib"]

    s.add_dependency 'mustache'
    s.add_dependency 'savon'
    s.add_dependency 'xmldsig'
    s.add_dependency 'nokogiri'
  end