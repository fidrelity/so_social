require 'so_social/view_helpers'

module SoSocial
  class Railtie < Rails::Railtie
    initializer "so_social.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end