# DO NOT EDIT THIS FILE DIRECTLY! Instead, use lib/gemspec.rb to generate it.

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-dashboard}
  s.version           = %q{0.9.9.11}
  s.summary           = %q{Dashboard engine for Refinery CMS}
  s.description       = %q{The dashboard is usually the first engine the user sees in the backend of Refinery CMS. It displays useful information and contains links to common functionality.}
  s.date              = %q{2011-03-23}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Resolve Digital', 'Philip Arndt', 'David Jones', 'Steven Heidel']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w()

  s.files             = [
    'app',
    'app/controllers',
    'app/controllers/admin',
    'app/controllers/admin/dashboard_controller.rb',
    'app/helpers',
    'app/helpers/admin',
    'app/helpers/admin/dashboard_helper.rb',
    'app/views',
    'app/views/admin',
    'app/views/admin/dashboard',
    'app/views/admin/dashboard/_actions.html.erb',
    'app/views/admin/dashboard/_additional_dashboard_menu_items.html.erb',
    'app/views/admin/dashboard/_recent_activity.html.erb',
    'app/views/admin/dashboard/_recent_inquiries.html.erb',
    'app/views/admin/dashboard/_records.html.erb',
    'app/views/admin/dashboard/index.html.erb',
    'app/views/admin/dashboard/index.rss.builder',
    'config',
    'config/locales',
    'config/locales/cs.yml',
    'config/locales/da.yml',
    'config/locales/de.yml',
    'config/locales/el.yml',
    'config/locales/en.yml',
    'config/locales/es.yml',
    'config/locales/fr.yml',
    'config/locales/it.yml',
    'config/locales/jp.yml',
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
    'features',
    'features/dashboard.feature',
    'features/step_definitions',
    'features/support',
    'features/support/paths.rb',
    'lib',
    'lib/gemspec.rb',
    'lib/refinerycms-dashboard.rb',
    'license.md',
    'refinerycms-dashboard.gemspec'
  ]

  s.add_dependency 'refinerycms-core', '~> 0.9.9.11'
end
