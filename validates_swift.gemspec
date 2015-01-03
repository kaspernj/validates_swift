$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "validates_swift/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "validates_swift"
  s.version     = ValidatesSwift::VERSION
  s.authors     = ["Kasper Johansen"]
  s.email       = ["k@spernj.org"]
  s.homepage    = "https://www.github.com/kaspernj/validates_swift"
  s.summary     = "SWIFT validator for ActiveRecord attributes."
  s.description = "SWIFT validator for ActiveRecord attributes."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 3.1.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "codeclimate-test-reporter"
end
