require 'devise'
require 'refinerycms-core'
# Attach authenticated system methods to the ::Refinery::ApplicationController
require File.expand_path('../authenticated_system', __FILE__)
[::Refinery::ApplicationController, ::Refinery::ApplicationHelper].each do |c|
  c.class_eval {
    include ::Refinery::AuthenticatedSystem
  }
end

module Refinery
  module Authentication

    class Engine < ::Rails::Engine

      initializer "serve static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.autoload_paths += %W( #{config.root}/lib )

      initializer "init plugin", :after => :set_routes_reloader do |app|
        ::Refinery::Plugin.register do |plugin|
          plugin.name = "refinery_users"
          plugin.version = %q{0.9.9.17}
          plugin.menu_match = /(refinery|admin)\/users$/
          plugin.activity = {
            :class => User,
            :title => 'login'
          }
          plugin.url = app.routes.url_helpers.admin_users_path
        end
      end
    end

    class << self
      attr_accessor :root
      def root
        @root ||= Pathname.new(File.expand_path('../../', __FILE__))
      end
    end
  end

  class << self
    attr_accessor :authentication_login_field
    def authentication_login_field
      @authentication_login_field ||= 'login'
    end
  end
end

::Refinery.engines << 'authentication'
