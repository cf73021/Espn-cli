require_relative './lib/espn_headlines/version'

Gem::Specification.new do |spec|
  spec.name          = "espn-cli"
  spec.version       = EspnHeadlines::VERSION
  spec.authors       = ["'Chris Franklin'"]
  spec.email         = ["'cf73021@gmail.com'"]

  spec.summary       = "A list of the headlines on ESPN"
  spec.description   = "Provides an orderly list of all headlines on the front page of ESPN."
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", ">= 0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end
