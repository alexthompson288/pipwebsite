class Word < ActiveRecord::Base
	attr_accessible :ccvc, :cvc, :diagraph, :entrypoint_session, :entrypointmodule, 
  :entrypointunit, :image, :nonsense, :numletters, :numphonemes, 
  :numsyllables, :splitdiagraph, :startingletter, :word, :section_ids, :theme_ids,
  :phoneme_ids, :cvcc, :tricky, :imagepossible, :imagerequired, :completed, :highfrequencyword, 
  :ordered_phonemes, :perfect, :dummyorderedphonemes, :frenchword, :spanishword, :mandarinword,
  :germanword, :cms_id

  after_save :startingletter

  has_and_belongs_to_many :sections
  
  has_and_belongs_to_many :phonemes

  #mount_uploader :image, ImageUploader

  serialize :ordered_phonemes, Array
  # this line of code for phonics year 1 test game
  #serialize :dummyorderedphonemes, Array

  scope :with_ordered_phonemes, where("ordered_phonemes is not null")
  # this line of code for phonics year 1 test game
  #scope :with_dummyorderedphonemes, where("dummyorderedphonemes is not null")

  def startingLetter
  	self.startingletter = self.word[0]
  end

  def as_etl_json
    {
      id:   id,
      word: word,
      phonemes: (phonemes.map { |phoneme|
        [phoneme.phoneme, phoneme.id]
      })
    }.as_json
    
  end



end
