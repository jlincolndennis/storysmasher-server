class API::V1::StoryController < ApplicationController
  def list
    @stories = Story.all
 end

 def show
   @stories = Story.find(params[:id])
 end

 def new
 end

 def create
 end

 def edit
 end

 def update
 end

 def delete
 end
end
