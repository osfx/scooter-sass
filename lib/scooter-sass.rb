require "scooter-sass/version"

module Scooter
  module Sass
    class << self
      def load!
        # register_compass_ext if compas?
        if rails?
          register_rails_engine
        elsif sprockets?
          register_sprockets
        end
        configure_sass
      end

      def gem_path
        @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
      end

      def stylesheets_path
        File.join assets_path, 'stylesheets'
      end

      def assets_path
        defined?(::Sprockets)
      end

      def compas?
        defined?(::Compass)
      end

      def rails?
        defined?(::Rails)
      end

      def configure_sass
        require 'sass'
        ::Sass.load_paths << stylesheets_path
      end

      def register_rails_engine
        require 'scooter-sass/engine'
      end

      def register_sprockets
        Sprockets.append_path(stylesheets_path)
      end
    end
  end
end

Scooter::Sass.load!
