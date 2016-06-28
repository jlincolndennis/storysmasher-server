class API::V1::UsersController < ApplicationController

  def index
    allTheUsers = User.all
    render json: {users: allTheUsers}
  end

  def myStories
    me = User.find(session[:current_user_id])
    myStories = me.stories
    
  end

end
