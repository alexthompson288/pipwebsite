class ProgrammodulesController < ApplicationController
  before_action :set_programmodule, only: :show

  def index
    @programmodules = Programmodule.where(:programmename => "Reading1")
  end

  def show
    @programsessions = Programsession.where(:programmodule_id => @programmodule.cms_id)
  end
  private
    def set_programmodule
      @programmodule = Programmodule.find(params[:id])
    end
end
