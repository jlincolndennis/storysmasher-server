  class API::V1::UsersController < ApplicationController

  def index
    allTheUsers = User.all
    render json: {users: allTheUsers}
  end

  def show
    me = User.find(params[:id])
    myStories = me.stories
    render json: {user: me, stories: myStories}

  end

  def me
    p "*"*30
    p params
  end

  # def create
  #   @user = User.new(user_param)
  #   @user.save
  #   render json: {user: @user}
  # end

  def user_param
     params.require(:user).permit(:username, :password)
  end

end
