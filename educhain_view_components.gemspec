require_relative "lib/educhain/view_components/version"

Gem::Specification.new do |spec|
  spec.name        = "educhain_view_components"
  spec.version     = Educhain::ViewComponents::VERSION
  spec.authors     = [ "Educhain Team" ]
  spec.email       = [ "admin@educhain.ru" ]
  spec.homepage    = "https://github.com/EduchainTeam/educhain_view_components"
  spec.summary     = "Educhain ViewComponents."
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/EduchainTeam/educhain_view_components"
  spec.metadata["changelog_uri"] = "https://github.com/EduchainTeam/educhain_view_components"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.2.2.1"
  spec.add_dependency "view_component", "~> 3.0"
  spec.add_dependency "tailwindcss-rails", "~> 3.3"
  spec.add_dependency 'importmap-rails', '~> 1.2', '>= 1.2.1'
  spec.add_dependency 'stimulus-rails'
end
