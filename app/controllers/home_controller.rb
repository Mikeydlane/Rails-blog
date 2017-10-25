class HomeController < ApplicationController
  def sign_in
  end

  def handle_sign_in
    p "we're trying to handle it!", params
    user = User.find_by(username: params[:user][:username])
    if user && user.password == params[:user][:password]
      session[:user_id]= user.id
      redirect_to :root
    else
      flash[:alert] = "You are no good!"
      redirect_to :root
    end
  end

  def sign_up
  end

  def handle_sign_up
    user = User.create(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], password: params[:password])
    redirect_to :root
  end
end
