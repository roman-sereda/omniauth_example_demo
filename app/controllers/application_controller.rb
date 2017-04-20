class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :add_headers

  def add_headers

    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = '*'

  end

  def current_user
    @current_user ||= []
    ['facebook', 'google_oauth2', 'twitter', 'github'].each_with_index do |provider, index|
      @current_user[index] = {user: get_provider_info(provider), type: provider}
    end

    return @current_user
  end

  private

  def get_provider_info(provider)
    session[provider] ? User.find_by(id: session[provider]).serializable_hash : nil
  end

  helper_method :current_user

end
