# Encoding: UTF-8
# DO NOT EDIT THIS FILE DIRECTLY! Instead, use lib/gemspec.rb to generate it.

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-settings}
  s.version           = %q{2.0.0}
  s.summary           = %q{Settings engine for Refinery CMS}
  s.description       = %q{The default settings engine that is required by Refinery CMS core. Adds programmer creatable, user editable settings for each engine.}
  s.date              = %q{2011-10-12}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Resolve Digital', 'Philip Arndt', 'David Jones', 'Steven Heidel', 'Uģis Ozols']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w()

  s.add_dependency    'activerecord', '~> 3.1.0'

  s.files             = [
    'app',
    'app/controllers',
    'app/controllers/refinery',
    'app/controllers/refinery/admin',
    'app/controllers/refinery/admin/settings_controller.rb',
    'app/helpers',
    'app/helpers/refinery',
    'app/helpers/refinery/admin',
    'app/helpers/refinery/admin/settings_helper.rb',
    'app/models',
    'app/models/refinery',
    'app/models/refinery/setting.rb',
    'app/views',
    'app/views/refinery',
    'app/views/refinery/admin',
    'app/views/refinery/admin/settings',
    'app/views/refinery/admin/settings/_actions.html.erb',
    'app/views/refinery/admin/settings/_form.html.erb',
    'app/views/refinery/admin/settings/_records.html.erb',
    'app/views/refinery/admin/settings/_setting.html.erb',
    'app/views/refinery/admin/settings/_settings.html.erb',
    'app/views/refinery/admin/settings/edit.html.erb',
    'app/views/refinery/admin/settings/index.html.erb',
    'app/views/refinery/admin/settings/new.html.erb',
    'config',
    'config/locales',
    'config/locales/bg.yml',
    'config/locales/cs.yml',
    'config/locales/da.yml',
    'config/locales/de.yml',
    'config/locales/el.yml',
    'config/locales/en.yml',
    'config/locales/es.yml',
    'config/locales/fi.yml',
    'config/locales/fr.yml',
    'config/locales/it.yml',
    'config/locales/ja.yml',
    'config/locales/ko.yml',
    'config/locales/lolcat.yml',
    'config/locales/lt.yml',
    'config/locales/lv.yml',
    'config/locales/nb.yml',
    'config/locales/nl.yml',
    'config/locales/pl.yml',
    'config/locales/pt-BR.yml',
    'config/locales/rs.yml',
    'config/locales/ru.yml',
    'config/locales/sk.yml',
    'config/locales/sl.yml',
    'config/locales/sv.yml',
    'config/locales/vi.yml',
    'config/locales/zh-CN.yml',
    'config/locales/zh-TW.yml',
    'config/routes.rb',
    'db',
    'db/migrate',
    'db/migrate/20100913234710_create_refinerycms_settings_schema.rb',
    'db/migrate/20100926142529_add_value_type_to_refinery_settings.rb',
    'db/migrate/20110117053357_remove_duplicate_user_image_sizes_setting.rb',
    'lib',
    'lib/gemspec.rb',
    'lib/refinery',
    'lib/refinery/generators',
    'lib/refinery/generators/settings_generator.rb',
    'lib/refinery/settings',
    'lib/refinery/settings/engine.rb',
    'lib/refinerycms-settings.rb',
    'license.md',
    'refinerycms-settings.gemspec',
    'spec',
    'spec/lib',
    'spec/lib/refinery',
    'spec/lib/refinery/generators',
    'spec/lib/refinery/generators/settings_generator_spec.rb',
    'spec/models',
    'spec/models/refinery',
    'spec/models/refinery/setting_spec.rb',
    'spec/requests',
    'spec/requests/refinery',
    'spec/requests/refinery/admin',
    'spec/requests/refinery/admin/settings_spec.rb'
  ]
end
