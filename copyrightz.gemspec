
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "copyrightz/version"

Gem::Specification.new do |spec|
  spec.name          = "copyrightz"
  spec.version       = Copyrightz::VERSION
  spec.authors       = ["CopyRightz"]
  spec.email         = ["TODO: Write your email address"]

  spec.summary       = %q{Copyrightz makes you add a full automatic copyright html tag inside your Rails App.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
