class ApplicationController < ActionController::Base
    include SessionsHelper
    before_action :logged_in_user, only: [:show]

    private
    def logged_in_user
        if !logged_in? 
          redirect_to login_url
        end
    end

end

