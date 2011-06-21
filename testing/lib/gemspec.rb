require 'pathname'
gempath = Pathname.new(File.expand_path('../../', __FILE__))
require gempath.join('..', 'base', 'lib', 'base', 'refinery')

gemspec = <<EOF
# DO NOT EDIT THIS FILE DIRECTLY! Instead, use lib/gemspec.rb to generate it.

Gem::Specification.new do |s|
  s.name              = %q{#{gemname = 'refinerycms-testing'}}
  s.version           = %q{#{::Refinery.version}}
  s.summary           = %q{Testing plugin for Refinery CMS}
  s.description       = %q{This plugin adds the ability to run cucumber and rspec against the RefineryCMS gem while inside a RefineryCMS project}
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Philip Arndt']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w(#{Pathname.glob(gempath.join('bin/*')).map{|d| d.relative_path_from(gempath)}.sort.join(" ")})

  s.add_dependency 'refinerycms-core', '= #{::Refinery::Version}'
  # RSpec
  s.add_dependency 'rspec-rails',       '~> 2.6'

  # Cucumber
  s.add_dependency 'capybara',          '>= 0.4.1.1'
  s.add_dependency 'database_cleaner'
  s.add_dependency 'cucumber-rails',    '>= 0.4'
  s.add_dependency 'cucumber'
  s.add_dependency 'launchy'
  s.add_dependency 'gherkin'
  s.add_dependency 'rack-test',         '~> 0.5.6'
  s.add_dependency 'json_pure'

  # Factory Girl
  s.add_dependency 'factory_girl'

  # Autotest
  s.add_dependency 'autotest'
  s.add_dependency 'autotest-rails'
  s.add_dependency 'autotest-notification'

  # RCov
  if RUBY_VERSION < '1.9'
    s.add_dependency 'rcov'
  else
    s.add_dependency 'simplecov'
  end
  
  s.files             = [
    '#{%w( **/{*,.rspec,.gitignore,.yardopts} ).map { |file| Pathname.glob(gempath.join(file)) }.flatten.reject{|f|
      !f.exist? or f.to_s =~ /\.gem$/ or (f.directory? and f.children.empty?)
    }.map{|d| d.relative_path_from(gempath)}.uniq.sort.join("',\n    '")}'
  ]
end
EOF

(gemfile = gempath.join("#{gemname}.gemspec")).open('w') {|f| f.puts(gemspec)}
puts `cd #{gempath} && gem build #{gemfile}` if ARGV.any?{|a| a == "BUILD=true"}
