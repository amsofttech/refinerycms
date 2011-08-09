# Encoding: UTF-8
# DO NOT EDIT THIS FILE DIRECTLY! Instead, use lib/gemspec.rb to generate it.

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-authentication}
  s.version           = %q{1.1.0}
  s.summary           = %q{Authentication engine for Refinery CMS}
  s.description       = %q{The default authentication engine for Refinery CMS}
  s.date              = %q{2011-08-09}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Resolve Digital', 'Philip Arndt', 'David Jones', 'Steven Heidel', 'Uģis Ozols']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w()

  s.add_dependency 'refinerycms-core',            '= 1.1.0'
  s.add_dependency 'devise',                      '~> 1.4.0'
  s.add_dependency 'friendly_id_globalize3',      '~> 3.2.1'

  s.files             = [
    'app',
    'app/controllers',
    'app/controllers/refinery',
    'app/controllers/refinery/admin',
    'app/controllers/refinery/admin/users_controller.rb',
    'app/controllers/refinery/passwords_controller.rb',
    'app/controllers/refinery/sessions_controller.rb',
    'app/controllers/refinery/users_controller.rb',
    'app/helpers',
    'app/helpers/refinery',
    'app/helpers/refinery/sessions_helper.rb',
    'app/helpers/refinery/users_helper.rb',
    'app/mailers',
    'app/mailers/refinery',
    'app/mailers/refinery/user_mailer.rb',
    'app/models',
    'app/models/refinery',
    'app/models/refinery/role.rb',
    'app/models/refinery/roles_users.rb',
    'app/models/refinery/user.rb',
    'app/models/refinery/user_plugin.rb',
    'app/views',
    'app/views/layouts',
    'app/views/layouts/login.html.erb',
    'app/views/refinery',
    'app/views/refinery/admin',
    'app/views/refinery/admin/users',
    'app/views/refinery/admin/users/_actions.html.erb',
    'app/views/refinery/admin/users/_form.html.erb',
    'app/views/refinery/admin/users/_records.html.erb',
    'app/views/refinery/admin/users/_user.html.erb',
    'app/views/refinery/admin/users/_users.html.erb',
    'app/views/refinery/admin/users/edit.html.erb',
    'app/views/refinery/admin/users/index.html.erb',
    'app/views/refinery/admin/users/new.html.erb',
    'app/views/refinery/passwords',
    'app/views/refinery/passwords/edit.html.erb',
    'app/views/refinery/passwords/new.html.erb',
    'app/views/refinery/sessions',
    'app/views/refinery/sessions/new.html.erb',
    'app/views/refinery/user_mailer',
    'app/views/refinery/user_mailer/reset_notification.html.erb',
    'app/views/refinery/user_mailer/reset_notification.text.plain.erb',
    'app/views/refinery/users',
    'app/views/refinery/users/new.html.erb',
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
    'config/locales/jp.yml',
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
    'db/migrate/20100913234705_create_refinerycms_authentication_schema.rb',
    'db/migrate/20100929035252_add_missing_indexes_to_roles_users.rb',
    'db/migrate/20101206013505_change_to_devise_users_table.rb',
    'db/migrate/20110106184757_add_remember_created_at_to_users.rb',
    'db/migrate/20110325213325_remove_password_salt_from_users.rb',
    'features',
    'features/lost_password.feature',
    'features/manage_users.feature',
    'features/sign_up.feature',
    'features/step_definitions',
    'features/step_definitions/lost_password.rb',
    'features/step_definitions/user_steps.rb',
    'features/support',
    'features/support/paths.rb',
    'lib',
    'lib/authenticated_system.rb',
    'lib/gemspec.rb',
    'lib/generators',
    'lib/generators/authentication_generator.rb',
    'lib/refinerycms-authentication.rb',
    'license.md',
    'refinerycms-authentication.gemspec',
    'spec',
    'spec/controllers',
    'spec/controllers/refinery',
    'spec/controllers/refinery/admin',
    'spec/controllers/refinery/admin/users_controller_spec.rb',
    'spec/models',
    'spec/models/refinery',
    'spec/models/refinery/user_spec.rb',
    'spec/requests',
    'spec/requests/lost_password_spec.rb',
    'spec/requests/manage_resources_spec.rb',
    'spec/requests/manage_users_spec.rb',
    'spec/requests/sign_in_spec.rb',
    'spec/requests/sign_up_spec.rb',
    'spec/support',
    'spec/support/refinery',
    'spec/support/refinery/authentication',
    'spec/support/refinery/authentication/controller_macros.rb',
    'spec/support/refinery/authentication/request_macros.rb',
    'spec/support/refinery/factories.rb',
    'spec/support/refinery/rspec_configuration.rb'
  ]
end
