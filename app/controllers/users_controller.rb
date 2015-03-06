class UsersController < ApplicationController

  layout 'admin'
  
  def index
    @user = User.all
  end

# Creates a new admin user
  def new
    @user = User.new()
  end
  def create
    @user = User.new(form_params)
    if @user.save
      flash[:success] = "Successful!"
      redirect_to(:action => 'index')
    else
      render 'new'
    end
  end

# Updates the user details from the admin
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(form_params)
      flash[:success] = "Successful!"
      redirect_to users_path
    else
      render :edit
    end
  end

  private

  def form_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end

end