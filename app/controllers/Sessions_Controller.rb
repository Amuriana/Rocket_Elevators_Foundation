class SessionController < ApplicationController
  def login
    if login_successful?
      reset_session
      session[:expires_after] = 1.hour.from_now.to_i
      rnew_page_url new_lead_url and return
    end
    new_page_url new_lead_url
  end

  def logout
    reset_session
    new_page_url new_lead_url
  end

  private

  def login_successful?
    # check login is successful
  end
end