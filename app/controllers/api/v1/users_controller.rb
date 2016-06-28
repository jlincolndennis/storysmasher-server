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

end
