# frozen_string_literal: true

require_relative "lib/kpi_calculation/version"

Gem::Specification.new do |spec|
  spec.name = "kpi_calculation"
  spec.version = KpiCalculation::VERSION
  spec.authors = ["mistake-git"]
  spec.email = ["acbmstk0402@gmail.com"]

  spec.summary = "A gem that calculates KPIs"
  spec.description = "Please refer to the README for details."
  # spec.homepage = ""
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = "https://github.com/mistake-git/gem_kpi_calculation.git"
  spec.metadata["source_code_uri"] = "https://github.com/mistake-git/gem_kpi_calculation.git"
  spec.metadata["changelog_uri"] = "https://github.com/mistake-git/gem_kpi_calculation.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
