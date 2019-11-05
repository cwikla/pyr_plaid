$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pyr/plaid/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pyr_plaid"
  s.version     = Pyr::Plaid::VERSION
  s.authors     = ["John Cwikla"]
  s.email       = ["gems@cwikla.com"]
  s.homepage    = "http://www.cwikla.com"
  s.summary     = "Plaid support library"
  s.description = "Plaid support library Description"
  s.post_install_message = "You can lead a horse to water, but you can't teach it to fish"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_dependency 'plaid'
end
