class UsersController < ApplicationController
before_action :set_constituencies, only: [:show, :edit, :update, :destroy]
before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def show
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Registration successful."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  def edit
    @user = current_user
  end
  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:notice] = "Successfully updated profile."
      redirect_to admin_root_url
    else
      render :action => 'edit'
    end
  end
def set_constituencies
@constituencies = Constituency.all.map do |constituency|
[ constituency.name, constituency.id]
return @constituencies
end
end
private
def user_params
params.require(:user).permit(:login, :password, :password_confirmation, :password_salt, :persistence_token, :email, :role, :admin, :constituency_id)
end
def set_user
@user = User.find(params[:id])
end

end

