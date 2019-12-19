lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "script_format_t/version"

Gem::Specification.new do |spec|
  spec.name          = "script_format_t"
  spec.version       = ScriptFormatT::VERSION
  spec.authors       = ["toririn"]
  spec.email         = ["toririn.paftako@gmail.com"]

  spec.summary       = %q{script format generater by toririn.}
  spec.description   = %q{script format generater by toririn.}
  spec.homepage      = "https://github.com/toririn/script_format_t"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/toririn/script_format_t"
  spec.metadata["changelog_uri"] = "https://github.com/toririn/script_format_t/Changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "aruba"
end
