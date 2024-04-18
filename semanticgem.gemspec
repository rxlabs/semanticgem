# frozen_string_literal: true

require_relative "lib/semanticgem/version"

Gem::Specification.new do |spec|
  spec.name = "semanticgem"
  spec.version = SemanticGem::VERSION
  spec.author = "Me"
  spec.email = "gem@example.com"

  spec.summary = "My Gem"
  spec.description = "sem gem"
  spec.homepage = "https://github.com/rxlabs/semanticgem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["bug_tracker_uri"] = "#{spec.metadata["source_code_uri"]}/issues"
  spec.metadata["changelog_uri"] = "#{spec.metadata["source_code_uri"]}/blob/main/CHANGELOG.md"
  spec.metadata["github_repo"] = "git@github.com:rxlabs/semanticgem.git"

  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{\A#{spec.bindir}/}) { |f| File.basename(f) }

  spec.files = Dir["lib/**/*.rb"].reject { |f| f.end_with?("_spec.rb") }
  spec.files += Dir["[A-Z]*"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "gem-release", "~> 2.2"
  spec.add_development_dependency "parse_gemspec-cli", "~> 1.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.21"
  spec.add_development_dependency "simplecov-console", "~> 0.9"
  spec.add_development_dependency "standard", "~> 1.3"
end
