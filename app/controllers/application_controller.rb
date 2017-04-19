class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def current_user
    [
      {user: User.find_by(id: session[:facebook]), type: 'facebook'},
      {user: User.find_by(id: session[:google_oauth2]), type: 'google_oauth2'}
    ]
  end

  helper_method :current_user

end
