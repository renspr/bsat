$:.push File.expand_path("../lib", __FILE__)

require "bsat/version"

Gem::Specification.new do |s|
  s.name        = "bsat"
  s.version     = Bsat::VERSION
  s.authors     = ["René Sprotte"]
  s.email       = ["renspr@gmail.com"]
  s.homepage    = "https://github.com/renspr/bsat"
  s.summary     = "bsat is a simple admin template build with Bootstrap 3 (SASS version) packaged as a Rails engine."
  s.description = "bsat is a simple admin template build with Bootstrap 3 (SASS version) packaged as a Rails engine."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails",              ">= 4.0"
  s.add_dependency "sass-rails",         ">= 4.0"
  s.add_dependency "bootstrap-sass",     ">= 3.2"
  s.add_dependency "coffee-rails",       ">= 4.0"
  s.add_dependency "compass-rails",      ">= 2.0"
  s.add_dependency "jquery-rails",       ">= 3.1"
  s.add_dependency "font-awesome-rails", ">= 4.2"
  s.add_dependency "slim",               ">= 2.0"

  #
  # FIXME
  # Lock sprockets to <= 2.11.0 until fix available
  # for https://github.com/Compass/compass-rails/issues/144
  #
  s.add_dependency "sprockets", "~> 2.8", "<= 2.11.0"

  s.add_development_dependency "sqlite3"
end
