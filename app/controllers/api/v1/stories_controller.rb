class API::V1::StoriesController < ApplicationController
  def index
    all_the_stories = Story.all
    render json: {stories: all_the_stories}
  end

  def show
    story = Story.find(params[:id])
    author_id = story.user_id
    author = User.find(author_id)
    render json: {author: author.username, story: {title: story.title, body: story.body}}
  end

  def create
    @story = Story.new(story_param)
    @story.save
    render json: {story: @story}
  end

  def story_param
     params.require(:story).permit(:title, :body, :user_id)
  end

end
