class StoriesController < ApplicationController
  before_action :set_story, only: :show

  def index
    @stories = Story.order(:programmodule_id).where(:publishable => true)
  end

  def show
    @story = Story.find(params[:id])
    @storypages = Storypage.where(:story_id => @story.cms_id)
  end

  private
    def set_story
      @story = Story.find(params[:id])
    end
end
