module Samurai
  module Admin
    class AdminController < ApplicationController
      authorize_resource class: false
      def index
        @last_n_users = Samurai::User.ordered.limit(3)
      end
    end
  end
end