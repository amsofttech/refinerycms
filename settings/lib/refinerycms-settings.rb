require 'refinerycms-base'

module Refinery
  module Settings

    class << self
      attr_accessor :root
      def root
        @root ||= Pathname.new(File.expand_path('../../', __FILE__))
      end
    end

    class Engine < ::Rails::Engine

      initializer "serve static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        ::Refinery::Plugin.register do |plugin|
          plugin.name = "refinery_settings"
          plugin.url = Rails.application.routes.url_helpers.admin_refinery_settings_path
          plugin.version = %q{0.9.9.17}
          plugin.menu_match = /(refinery|admin)\/(refinery_)?settings$/
        end
      end
    end
  end
end

::Refinery.engines << 'settings'
