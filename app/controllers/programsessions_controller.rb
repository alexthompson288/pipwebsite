class ProgramsessionsController < ApplicationController
  before_action :set_programsession, only: :show

  def show
    @programsession = Programsession.find(params[:id])
    @programmodule = Programmodule.find_by_cms_id(@programsession.programmodule_id)
    @story = Story.find_by_cms_id(@programsession.story_id)
    @pipisode = Pipisode.find_by_cms_id(@programsession.pipisode_id)
    @sections = Section.where(:programsession_id => @programsession.cms_id)
  end

  private
    def set_programsession
      @programsession = Programsession.find(params[:id])
    end
end
