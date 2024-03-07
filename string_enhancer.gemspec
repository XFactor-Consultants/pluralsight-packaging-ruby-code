# frozen_string_literal: true

require_relative "lib/string_enhancer/version"

Gem::Specification.new do |spec|
  spec.name = "string_enhancer"
  spec.version = StringEnhancer::VERSION
  spec.authors = ["Henchworm"]
  spec.email = ["agop5134@gmail.com"]

  spec.summary = "The StringEnhancer gem extends the Ruby string class with additional methods for formatting, manipulation, and querying Strings."
  spec.homepage = "https://github.com/XFactor-Consultants/pluralsight-packaging-ruby-code"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/XFactor-Consultants/pluralsight-packaging-ruby-code"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov'
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
