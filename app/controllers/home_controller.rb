class HomeController < ApplicationController
  def index
  	@user = session['loginedUser']
  end
  def login
  end
  def checkLogin
  	@user = User.find_by_account(params[:user][:account])
  	if @user != nil && @user[:password] == params[:user][:password]
  		session['loginedUser'] = @user
  		redirect_to :controller=>'home',:action=>'index'
  	else
  		session['loginedUser'] = nil
  		redirect_to :controller=>'home',:action=>'login'
  	end
  end
  def logout
  	session['loginedUser'] = nil
  	redirect_to :controller=>'home',:action=>'index'
  end

end
