class ApplicationController < ActionController::Base

rescue_form LoginFailed,with: :login_failed

    def login_failed
        render template: "shared/login_failed",status:401
    end
end
