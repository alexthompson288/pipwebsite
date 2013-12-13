class PagesController < ApplicationController
  def home
  end

  def about
  end

  def coming
  end

  def info
  end

  def videos
  end

  def learninggames
  end

  def lettersounds
    
    @alphabeticphonemes = Phoneme.where("setnumber < 8").order(:phoneme)
    @setphonemes = Phoneme.order(:setname)
  end

end
