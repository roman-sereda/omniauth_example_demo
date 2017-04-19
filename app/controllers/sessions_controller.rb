class SessionsController < ApplicationController

  def create
    p params['provider']
    p '!!!!!!!!!!!!!!!!!'
    begin
      @user = User.from_omniauth(request.env['omniauth.auth'], params['provider'])
      session[params['provider']] = @user.id
      flash[:success] = "Welcome, #{@user.name}!"
    rescue
      flash[:warning] = "There was an error while trying to authenticate you ..."
    end

    redirect_to root_path
  end

  def destroy
    if current_user
      session.delete(:facebook)
      session.delete(:google_oauth2)
      flash[:success] = 'See you'
    end
    redirect_to root_path
  end

end
