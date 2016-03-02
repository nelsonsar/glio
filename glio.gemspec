# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "glio/version"

Gem::Specification.new do |s|
  s.name        = "glio"
  s.version     = Glio::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nelson Senna"]
  s.email       = ["onelsonsenna@gmail.com"]
  s.license     = "MIT"
  s.homepage    = ""
  s.summary     = %q{A Glio logic test}
  s.description = %q{Just a Glio logic test made by me}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/{functional,unit}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
end
