class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.assign_attributes(user_params)
    if @user.first_name == ''
      @user.first_name = nil
    end
    if @user.last_name == ''
      @user.last_name = nil
    end
    @user.save
    flash[:success] = 'Your profile was successfully updated'
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :city, :state)
  end
end
