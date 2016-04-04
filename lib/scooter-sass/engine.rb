module Scooter
  module Sass
    class Engine < ::Rails::Engine
      initializer 'scooter-sass.assets.precompile' do |app|
        %w(stylesheets).each do |sub|
          app.config.assets.path << root.join('app/assets', sub).to_s
        end
      end
    end
  end
end
