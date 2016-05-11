class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(params_user)
    if user.save
      redirect_to root_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(params_user)
      redirect_to root_path
    else
      render 'edit'
    end
  end 

  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end


  private

  def params_user
    params.require(:user).permit(:prenom, :nom, :email, :ville)
  end

end
