class UsersController < ApplicationController
  

  def index
    if params[:user][:username] # gets user[username] from value
      name = params[:user][:username]
      user = User.find_by(username: name)
      render json: user
    else
      render json: User.all
    end

  end

  def create
    user = User.new(user_params)
    if user.save 
      render json: user 
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end

  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  def show 
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end

  end
  
  private
  def user_params
    params.require(:user).permit(:username)

  end
  
end
