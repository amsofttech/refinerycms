# DO NOT EDIT THIS FILE DIRECTLY! Instead, use lib/gemspec.rb to generate it.

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-base}
  s.version           = %q{0.9.9.5}
  s.summary           = %q{Base engine for Refinery CMS}
  s.description       = %q{The basic base for Refinery CMS Refinery CMS}
  s.date              = %q{2011-03-08}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Resolve Digital', 'Philip Arndt', 'David Jones', 'Steven Heidel']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w()

  s.files             = [
    'db',
    'db/migrate',
    'db/migrate/20100913234706_create_refinerycms_core_schema.rb',
    'db/migrate/20101217113424_add_locale_to_slugs.rb',
    'lib',
    'lib/base',
    'lib/base/refinery.rb',
    'lib/gemspec.rb',
    'lib/generators',
    'lib/generators/refinerycms_base_generator.rb',
    'lib/refinery',
    'lib/refinery/version.rb',
    'lib/refinerycms-base.rb',
    'license.md',
    'refinerycms-base.gemspec'
  ]
end
