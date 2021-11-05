
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "runbook"
  spec.version       = "0.2.1"
  spec.authors       = [
    "Oscar Esgalha",
    "João Vitor Lima",
  ]
  spec.email         = [
    "oscar@instruct.com.br",
    "joao.nascimento@instruct.com.br",
  ]

  spec.summary       = %q{Aplicação para gerar inventário de equipamentos}
  spec.description   = %q{Aplicação para gerar inventário de equipamentos}
  spec.homepage      = "https://gitlab.instruct.com.br/equinix/runbook"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://gitlab.instruct.com.br/equinix/runbook"
    spec.metadata["changelog_uri"] = "https://gitlab.instruct.com.br/equinix/runbook/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^((test|spec|features|images)/|\..*)}) }
  spec.files = [
    "CHANGELOG.md",
    "Dockerfile",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "bin/runbook",
    "lib/runbook.rb",
    "lib/runbook/cli.rb",
    "lib/runbook/config.rb",
    "lib/runbook/hash.rb",
    "lib/runbook/script.rb",
    "lib/runbook/report.rb",
    "lib/runbook/version.rb",
    "runbook.gemspec"
  ]
  spec.bindir         = "bin"
  spec.executables    = ["runbook"]
  spec.require_paths  = ["lib"]

  spec.add_development_dependency 'puppet', '>= 4.2', '< 6'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
