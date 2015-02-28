$:.push File.expand_path("../lib", __FILE__)
require "hexx/version"

Gem::Specification.new do |s|
  s.name        = "hexx"
  s.version     = Hexx::VERSION.dup
  s.author      = "Andrew Kozin"
  s.email       = "andrew.kozin@gmail.com"
  s.homepage    = "https://github.com/nepalez/hexx"
  s.description = "Collection of scaffolders."
  s.summary     = "Collection of scaffolders for projects that follow " \
                  "the hexagonal architecture."
  s.license     = "MIT"
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = ">= 2.1"

  s.require_paths    = ["lib"]
  s.files            = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.test_files       = Dir["spec/**/*.rb"]
  s.extra_rdoc_files = Dir["README.md", "LICENSE", "config/metrics/STYLEGUIDE"]

  s.add_runtime_dependency "extlib", "~> 0.9"
  s.add_runtime_dependency "hexx-suit", "~> 0.0"
end
