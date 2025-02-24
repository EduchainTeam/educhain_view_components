require "bundler/setup"

APP_RAKEFILE = File.expand_path("demo/Rakefile", __dir__)
load "rails/tasks/engine.rake"

load "rails/tasks/statistics.rake"

require "bundler/gem_tasks"

namespace :tailwindcss do
  tailwindcss_command = [
    "tailwindcss",
    "--config",
    "#{__dir__}/config/tailwind.config.js",
    "--input",
    "#{__dir__}/app/assets/stylesheets/application.tailwind.css",
    "--output",
    "#{__dir__}/app/assets/builds/educhain_view_components.css",
  ]

  desc 'Build Tailwind CSS'
  task :build do
    sh tailwindcss_command.shelljoin
  end

  desc 'Watch Tailwind CSS'
  task :watch do
    sh (tailwindcss_command + ['--watch']).shelljoin
  end
end