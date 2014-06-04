class WordsController < ApplicationController
  before_action :set_word, only: :show

  def show
    @word = Word.find(params[:id])
    respond_to do |format|
      format.json { render json: @word }
    end
  end

  private
    def set_word
      @word = Word.find(params[:id])
    end
end
