#!/usr/bin/env ruby
require File.expand_path('../../vendor/refinerycms/refinery.rb', __FILE__)
files = %w( .gitignore .yardopts Gemfile *.md ).map { |file| Dir[file] }.flatten
%w(app bin config db features lib public script spec test themes vendor).sort.each do |dir|
  files += Dir.glob("#{dir}/**/*")
end
rejection_patterns = [
  "public\/system",
  "^config\/(application|boot|environment).rb$",
  "^config\/initializers\/(backtrace_silencers|inflections|mime_types|secret_token|session_store).rb$",
  "^config\/(database|i18n\-js).yml$",
  "^public\/",
  "^lib\/gemspec\.rb",
  ".*\/cache\/",
  "^db\/.*\.sqlite3?(-journal)?$",
  "^script\/*",
  "^vendor\/plugins\/?$",
  "\.log$",
  "\.rbc$"
]

files.reject! do |f|
  !File.exist?(f) or f =~ %r{(#{rejection_patterns.join(')|(')})} or (File.directory?(f) and Dir[File.join(f, "*")].empty?)
end

gemspec = <<EOF
# DO NOT EDIT THIS FILE DIRECTLY! Instead, use lib/gemspec.rb to generate it.

Gem::Specification.new do |s|
  s.name              = %q{refinerycms}
  s.version           = %q{#{Refinery.version}}
  s.description       = %q{A Ruby on Rails CMS that supports Rails 3. It's easy to extend and sticks to 'the Rails way' where possible.}
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.summary           = %q{A Ruby on Rails CMS that supports Rails 3}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Resolve Digital', 'David Jones', 'Philip Arndt']
  s.require_paths     = %w(vendor/refinerycms)
  s.executables       = %w(#{Dir.glob('bin/*').map{|d| d.gsub('bin/','')}.join(' ')})

  s.add_dependency    'rails',                '~> 3.0.3'
  s.add_dependency    'bundler',              '~> 1.0.5'

  s.add_dependency    'moretea-awesome_nested_set', '= 1.4.3.1'

  s.add_dependency    'acts_as_indexed',      '~> 0.6.6'
  s.add_dependency    'friendly_id',          '~> 3.1.6'
  s.add_dependency    'truncate_html',        '= 0.4'
  s.add_dependency    'will_paginate',        '~> 3.0.pre'
  s.add_dependency    'authlogic',            '~> 2.1.6'
  s.add_dependency    'rack-cache',           '~> 0.5.2'
  s.add_dependency    'dragonfly',            '~> 0.8'
  s.add_dependency    'rdoc',                 '>= 2.5.11' # helps fix ubuntu

  s.files             = [
    '#{files.sort.join("',\n    '")}'
  ]
end
EOF

File.open(File.expand_path("../../refinerycms.gemspec", __FILE__), 'w').puts(gemspec)
