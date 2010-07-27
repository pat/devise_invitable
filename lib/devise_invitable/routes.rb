module ActionDispatch
  module Routing
    class Mapper
      protected
      
      def devise_invitation(mapping, controllers)
        scope :controller => controllers[:invitations] do
          resource :invitation, :only => [:new, :create, :edit, :update], :path => mapping.path_names[:invitation] do
            get mapping.path_names[:accept].to_sym, :action => :edit
          end
        end
      end
    end
  end
end