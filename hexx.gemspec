$:.push File.expand_path("../lib", __FILE__)
require "hexx/version"

Gem::Specification.new do |gem|

  gem.name        = "hexx"
  gem.version     = Hexx::VERSION.dup
  gem.author      = "Andrew Kozin"
  gem.email       = "andrew.kozin@gmail.com"
  gem.homepage    = "https://github.com/nepalez/hexx"
  gem.description = "A collection of scaffolders."
  gem.summary     = "A collection of scaffolders for projects that follow " \
                    "the Hexagonal Architecture."
  gem.license     = "MIT"

  gem.require_paths    = ["lib"]
  gem.files            = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables      = ["hexx"]
  gem.test_files       = Dir["spec/**/*.rb"]
  gem.extra_rdoc_files = Dir["README.md", "LICENSE"]

  gem.required_ruby_version = "~> 2.0"
  gem.add_runtime_dependency "hexx-validators", "~> 0.0", ">= 0.0.2"
  gem.add_runtime_dependency "hexx-dependencies", "~> 0.0"
  gem.add_runtime_dependency "policy", "~> 1.2"
  gem.add_development_dependency "hexx-rspec", "~> 0.3"

end
