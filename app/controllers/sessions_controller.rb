class SessionsController < ApplicationController
  
  def new
  end

  def create

    user = Usuario.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:usuario_id] = user.id
      log_in user
      #params[:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to root_url

    else
      flash.now[:alert] = "Usuario o password inválido"
      render "new"
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
