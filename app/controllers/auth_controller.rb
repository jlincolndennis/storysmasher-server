class AuthController < ApplicationController

  require 'json_web_token'

  def signup
    # p params
    user = User.new(username: params[:user][:username])
    user.password = params[:user][:password]
    if user.save
      jwt = JsonWebToken.sign({id: user.id, username: user.username}, key: ENV['SECRET'])
      render :json => {id: user.id, username: user.username, jwt: jwt}
    else
      render status: 400, :json => {error: "Name already exists in the database"}
    end
  end

  def signin
    user = User.find_by(username: params[:user][:username])
    if user.password == params[:user][:password]
      jwt = JsonWebToken.sign({id: user.id, username: user.username}, key: ENV['SECRET'])
      # jwt = JsonWebToken.sign({id: user.id}, key: 'test')
      render :json => {id: user.id, username: user.username, jwt: jwt}
    else
      render status: 400, :json => {error: "Name or password is incorrect"}
    end
  end

  def user_param
     params.require(:user).permit(:username, :password)
  end

end
