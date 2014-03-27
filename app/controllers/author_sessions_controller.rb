class AuthorSessionsController < ApplicationController

  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(articles_path, message: 'Logged in successfully.')
    else
      flash.now.notice = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    flash.notice = "Loged out successfully."
    redirect_to(:articles, message: 'Logged out!')
  end
end
