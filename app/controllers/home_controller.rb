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
    user = User.create(params.require(:user).permit(:first_name, :last_name, :username, :password))
    session[:user_id]= user.id
    redirect_to "/posts"
  end

  def index
    @posts = Post.all
  end
  def logout

  	session[:user_id] = nil
  	flash[:message] = "Logged out"
  	redirect_to :root
end
end
