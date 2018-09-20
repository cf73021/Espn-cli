require_relative './lib/hbo_movies/version'

Gem::Specification.new do |spec|
  spec.name          = "hbomovies-cli"
  spec.version       = HboMovies::VERSION
  spec.authors       = ["'Chris Franklin'"]
  spec.email         = ["'cf73021@gmail.com'"]

  spec.summary       = "A list of the movies available on HBO"
  spec.description   = "Provides an orderly list of all of the movies you can watch on HBO right now."
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", ">= 0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end
