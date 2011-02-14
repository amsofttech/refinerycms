#!/usr/bin/env ruby
require 'pathname'
gempath = Pathname.new(File.expand_path('../../', __FILE__))
require gempath.join('base', 'lib', 'base', 'refinery')

files = %w( Gemfile *.md **/**/{*,.rspec,.gitignore,.yardopts} ).map { |file| Pathname.glob(file) }.flatten
rejection_patterns = [
  "^(authentication|base|core|dashboard|images|pages|resources|settings)",
  "^public/system",
  "^config/(application|boot|environment).rb$",
  "^config/initializers(\/.*\.rb)?$",
  "^config/(database|i18n\-js).yml$",
  "^lib\/gemspec\.rb",
  ".*\/cache\/",
  "^db(\/)?",
  "^script\/*",
  "^vendor\/plugins\/?$",
  "(^log|\.log)$",
  "\.rbc$",
  "^tmp(|/.+?)$",
  ".gem$",
  "^doc($|\/)"
]

files.reject! do |f|
  !f.exist? or (f.directory? and f.children.empty?) or f.to_s =~ %r{(#{rejection_patterns.join(')|(')})}
end

gemspec = <<EOF
# DO NOT EDIT THIS FILE DIRECTLY! Instead, use lib/gemspec.rb to generate it.

Gem::Specification.new do |s|
  s.name              = %q{#{gemname = 'refinerycms'}}
  s.version           = %q{#{::Refinery.version}}
  s.description       = %q{A Ruby on Rails CMS that supports Rails 3. It's easy to extend and sticks to 'the Rails way' where possible.}
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.summary           = %q{A Ruby on Rails CMS that supports Rails 3}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Resolve Digital', 'Philip Arndt', 'David Jones', 'Steven Heidel']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w(#{Dir['bin/*'].join(' ').gsub('bin/', '')})

  # Bundler
  s.add_dependency    'bundler',                    '~> 1.0.5'

  # Refinery CMS
  s.add_dependency    'refinerycms-authentication', "~> #{::Refinery::Version}"
  s.add_dependency    'refinerycms-base',           "~> #{::Refinery::Version}"
  s.add_dependency    'refinerycms-core',           "~> #{::Refinery::Version}"
  s.add_dependency    'refinerycms-dashboard',      "~> #{::Refinery::Version}"
  s.add_dependency    'refinerycms-images',         "~> #{::Refinery::Version}"
  s.add_dependency    'refinerycms-pages',          "~> #{::Refinery::Version}"
  s.add_dependency    'refinerycms-resources',      "~> #{::Refinery::Version}"
  s.add_dependency    'refinerycms-settings',       "~> #{::Refinery::Version}"

  s.add_development_dependency 'rspec-rails',       '~> 2.5'

  # Cucumber
  s.add_development_dependency 'capybara',          '>= 0.4.1.1'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'cucumber-rails'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'gherkin'
  s.add_development_dependency 'rack-test',         '~> 0.5.6'
  s.add_development_dependency 'json_pure'

  # Factory Girl
  s.add_development_dependency 'factory_girl'

  # Autotest
  s.add_development_dependency 'autotest'
  s.add_development_dependency 'autotest-rails'
  s.add_development_dependency 'autotest-notification'

  s.files             = [
    '#{files.sort.join("',\n    '")}'
  ]
end
EOF


(gemfile = gempath.join("#{gemname}.gemspec")).open('w') {|f| f.puts(gemspec)}
puts `cd #{gempath} && gem build #{gemfile}` if ARGV.any?{|a| a == "BUILD=true"}

unless ARGV.any?{|a| a == "ALL=false"}
  Pathname.glob('**/lib/gemspec.rb').reject{|g| g.to_s == __FILE__}.each do |spec|
    puts "Loading #{spec}..."
    load spec
  end
end
