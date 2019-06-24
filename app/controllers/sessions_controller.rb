class SessionsController < ApplicationController
  def new
  end

  def create
    user = Usuario.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:usuario_id] = user.id
      redirect_to root_url, notice: "Iniciaste sesión!"
    else
      flash.now[:alert] = "Usuario o password inválido"
      render "new"
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to root_url, notice: "Chau!"
  end

end
