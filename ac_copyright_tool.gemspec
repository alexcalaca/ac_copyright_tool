# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ac_copyright_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "ac_copyright_tool"
  spec.version       = AcCopyrightTool::VERSION
  spec.authors       = ["Alexandre Calaca"]
  spec.email         = ["alexcalaca@gmail.com"]

  spec.summary       = %q{This gem generates HTML data for Rails applications.}
  spec.description   = %q{}
  spec.homepage      = "https://www.alexandrecalaca.com.br"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end