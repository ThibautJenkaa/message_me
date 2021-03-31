class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:create, :new]

  def new 
    
  end

  def create
    user = User.find_by(pseudo: params[:session][:pseudo])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Authentification réussie !"
      redirect_to root_path
    else 
      flash.now[:error] = "Mauvais identifiants"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Deconnexion réussie"
    redirect_to login_path
  end

  private 

  def logged_in_redirect
    if logged_in?
      flash[:error] = "Vous êtes déja connecté"
      redirect_to root_path
    end
  end

end