require 'rails'
require 'ember/auth/module/timeoutable/source'
require 'ember/auth/module/timeoutable/rails/version'
require 'ember/auth/module/timeoutable/rails/engine'

module Ember
  module Auth
    module Module
      module Timeoutable
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.module.timeoutable.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Module::Timeoutable::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
