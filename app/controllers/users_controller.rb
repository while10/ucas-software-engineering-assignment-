class UsersController < ApplicationController
  def zuoye1
  end
  def sign_up
   @user = User.new
  end
  def create
  	params.permit!
  	@user = User.new(user_params)
  	if @user.save

  		session['loginedUser'] = @user
  		redirect_to :controller=>'home',:action=>'index'
  	else
 # 		redirect_to :controller=>'home',:action=>'registration'
       redirect_to :controller=>'users',:action=>'sign_up'
  	end
  end



  def show
    @users =  User.all
  end
  def edit
    @user = User.find(params[:id])
  end



  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to :controller=>'users',:action=>'show', :notice=>"Your user has been updated"

    else
      render "edit"

    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :controller=>'users',:action=>'show', :notice=>"Your post has been deleted"
  end


  private
  def user_params
    params.require(:user).permit(:account, :password, :name, :email)
  end

end
