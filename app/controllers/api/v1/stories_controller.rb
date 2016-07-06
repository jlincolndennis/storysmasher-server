class API::V1::StoriesController < ApplicationController
  def index
    all_the_stories = Story.all
    render json: {stories: all_the_stories}
  end

  def show
    story = Story.find(params[:id])
    author_id = story.user_id
    author = User.find(author_id)
    render json: {
      author: author.username,
      story: {
        title: story.title,
        paragraph_1: story.paragraph_1,
        paragraph_2: story.paragraph_2,
        paragraph_3: story.paragraph_3,
        paragraph_4: story.paragraph_4,
        paragraph_5: story.paragraph_5,
        paragraph_6: story.paragraph_6,
        paragraph_7: story.paragraph_7
        }}
  end

  def create
    @story = Story.new(story_param)
    @story.save
    render json: {story: @story}
  end

  def story_param
     params.require(:story).permit(
     :title,
     :paragraph_1,
     :paragraph_2,
     :paragraph_3,
     :paragraph_4,
     :paragraph_5,
     :paragraph_6,
     :paragraph_7,
     :user_id)
  end

  def update

    Story.update(params[:id], :user_id => params[:user_id])
    author_id = story.user_id
    author = User.find(author_id)
    render json: {
      author: author.username,
      story: {
        title: story.title,
        # paragraph_1: story.paragraph_1,
        # paragraph_2: story.paragraph_2,
        # paragraph_3: story.paragraph_3,
        # paragraph_4: story.paragraph_4,
        # paragraph_5: story.paragraph_5,
        # paragraph_6: story.paragraph_6,
        # paragraph_7: story.paragraph_7
        }}

  end

end
