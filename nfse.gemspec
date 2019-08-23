Gem::Specification.new do |gem|
    gem.authors = ["Reinaldo ACDC"]
    gem.name = %q{nfse_gem}
    gem.version = "0.0.0"
    gem.date = %q{2011-09-29}
    gem.summary = %q{nfse_gem is the best}
    gem.files = ["./lib/nfse_gem.rb"]
    gem.files += Dir['./lib/nfse/*.rb']
    gem.files += Dir['./lib/templates/**/*.mustache']
    gem.require_paths = ["./lib"]


    gem.add_dependency 'mustache', '~> 0.99'
    gem.add_dependency 'savon', '~> 2.12.0'
    gem.add_dependency 'xmldsig', '~> 0.6.6'
    
    gem.add_dependency "nokogiri", "~> 1.8"
    gem.add_dependency "prawn", "~> 1.2"
    gem.add_dependency "prawn-table", "~> 0.2"    
  end