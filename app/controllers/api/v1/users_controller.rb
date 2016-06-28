class API::V1::UsersController < ApplicationController

  def index
    render json: {message: 'Hello From The Rails Server!'}
  end

end
