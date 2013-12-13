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
    @setonephonemes = Phoneme.where(:setnumber => '1').order(:phonemeorder)
    @settwophonemes = Phoneme.where(:setnumber => '2').order(:phonemeorder)
    @setthreephonemes = Phoneme.where(:setnumber => '3').order(:phonemeorder)
    @setfourphonemes = Phoneme.where(:setnumber => '4').order(:phonemeorder)
    @setfivephonemes = Phoneme.where(:setnumber => '5').order(:phonemeorder)
    @setsixphonemes = Phoneme.where(:setnumber => '6').order(:phonemeorder)
    @setsevenphonemes = Phoneme.where(:setnumber => '7').order(:phonemeorder)

  end

end
