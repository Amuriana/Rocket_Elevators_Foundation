class SessionController < ApplicationController
    def login
      if login_successful?
        reset_session
        session[:expires_after] = 1.hour.from_now.to_i
        redirect_to some_page_url and return
      end
      redirect_to new_login_url
    end
  
    def logout
      reset_session
      redirect_to root_url
    end
  
    private
  
    def login_successful?
      # check login is successful
    end
  end