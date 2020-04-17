class ApplicationController < ActionController::Base
    protect_from_forgery prepend: true, with: :exception
    before_action :check_session_validity

  private

  def check_session_validity
    unless session[:expires_after] && session[:expires_after] > Time.now.to_i
        new_page_url new_lead_url
    end
  end
    
end
