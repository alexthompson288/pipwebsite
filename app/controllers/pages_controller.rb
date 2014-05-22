class PagesController < ApplicationController
  
  require 'json'
  require 'open-uri'

  def home
  end



  def colourbands
    @colourposts = Post.where(:posttype => 'stage').order(:priority_level)
    @userguideposts = Post.where(:posttype => 'userguide').order(:priority_level)
  end

  def findwhichstage
    @posts = Post.where(:posttype => 'stagetest')
  end

  def programmes
    @posts = Post.where(:posttype => 'programme')
  end

  def mypage
    # @user = current_user
    colour = 'pink'
    if colour == 'pink'
      @posts = Post.where(:pink => true)
    elsif colour == 'red'
      @posts = Post.where(:red => true)
    elsif colour == 'yellow'
      @posts = Post.where(:yellow => true)
    elsif colour == 'blue'
      @posts = Post.where(:blue => true)
    elsif colour == 'green'
      @posts = Post.where(:green => true)
    elsif colour == 'orange'
      @posts = Post.where(:orange => true)
    end
  end

  def home1
    @stages = Stage.order(:number)
    @products = Product.all
  end

  def update_words
    Word.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/words.json").read)
    json_object.each do |w|
      Word.create!(
        :id => w['id'],
        :word => w['word'], 
        :startingletter => w['startingletter'],
        :cvc => w['cvc'],
        :ccvc => w['ccvc'],
        :diagraph => w['diagraph'],
        :splitdiagraph => w['splitdiagraph'],
        :numsyllables => w['numsyllables'],
        :numletters => w['numletters'],
        :numphonemes => w['numphonemes'],
        :image => w['image'],
        :nonsense => w['nonsense'],
        :entrypointmodule => w['entrypointmodule'],
        :entrypointunit => w['entrypointunit'],
        :entrypoint_session => w['entrypoint_session'],
        :created_at => w['created_at'],
        :updated_at => w['updated_at'],
        :highfrequencyword => w['highfrequencyword'],
        :cvcc => w['cvcc'],
        :imagepossible => w['imagepossible'],
        :imagerequired => w['imagerequired'],
        :completed => w['completed'],
        :tricky => w['tricky'],
        :frenchword => w['frenchword'],
        :spanishword => w['spanishword'],
        :mandarinword => w['mandarinword'],
        :germanword => w['germanword'],
        :cms_id => w['id'],
        :ordered_phonemes => w['ordered_phonemes']
        );
    end
  end

  def update_phonemes
    Phoneme.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/phonemes.json").read)
    json_object.each do |w|
      Phoneme.create!(       
        :phoneme => w['phoneme'], 
        :startingletter => w['startingletter'],
        :grapheme => w['grapheme'],
        :mneumonic => w['mneumonic'],
        :completed => w['completed'],
        :grapheme => w['grapheme'],
        :setnumber => w['setnumber'],
        :phonemeorder => w['phonemeorder'],
        :cms_id => w['id']
        );
    end
  end

  def banks
    @phonemes = Phoneme.where(:completed => true)
    @alphabet = ('a'..'z').to_a
    @keywords = Word.where(:tricky => true)
    @words = Word.where(:completed => true)
  end

  def update_pipisodes
    Pipisode.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/pipisodes.json").read)
    json_object.each do |w|
      Pipisode.create!( 
        :pipisode_title => w['pipisode_title'],      
        :video_filename => w['video_filename'], 
        :image_filename => w['image_filename'],
        :order_number => w['order_number'],
        :interactive_video => w['interactive_video'],
        :pipisode_overview => w['pipisode_overview'],
        :programmodule_id => w['programmodule_id'],
        :phonicsset_id => w['phonicsset_id'],
        :video_filename => w['video_filename'], 
        :label_text => w['label_text'],
        :publishable => w['publishable'],
        :transcript_english => w['transcript_english'],
        :transcript_french => w['transcript_french'],
        :transcript_spanish => w['transcript_spanish'],
        :transcript_mandarin => w['transcript_mandarin'],
        :pipisode_overview_french => w['pipisode_overview_french'],
        :pipisode_overview_spanish => w['pipisode_overview_spanish'], 
        :pipisode_overview_mandarin => w['pipisode_overview_mandarin'],
        :pipisode_title_french => w['pipisode_title_french'],
        :pipisode_title_spanish => w['pipisode_title_spanish'],
        :pipisode_title_mandarin => w['pipisode_title_mandarin'],
        :video_filename_french => w['video_filename_french'],
        :video_filename_spanish => w['video_filename_spanish'],
        :video_filename_mandarin => w['video_filename_mandarin'],
        :extra_activities => w['extra_activities'],
        :extra_activities_french => w['extra_activities_french'],
        :extra_activities_spanish => w['extra_activities_spanish'],
        :extra_activities_mandarin => w['extra_activities_mandarin'],
        :cms_id => w['id']
        );
    end
  end

  def update_quizquestions
    Quizquestion.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/quizquestions.json").read)
    json_object.each do |w|
      Quizquestion.create!( 
        :question => w['question'],      
        :correctanswer => w['correctanswer'], 
        :dummyanswer1 => w['dummyanswer1'],
        :dummyanswer2 => w['dummyanswer2'],
        :pipisode_id => w['pipisode_id'],
        :programsession_id => w['programsession_id'],
        :programmodule_id => w['programmodule_id'],
        :image => w['image'],
        :question_french => w['question_french'], 
        :question_spanish => w['question_spanish'],
        :question_mandarin => w['question_mandarin'],
        :correct_answer_french => w['correct_answer_french'],
        :correct_answer_spanish => w['correct_answer_spanish'],
        :correct_answer_mandarin => w['correct_answer_mandarin'],
        :dummyanswer1_french => w['dummyanswer1_french'],
        :dummyanswer1_spanish => w['dummyanswer1_spanish'],
        :dummyanswer1_mandarin => w['dummyanswer1_mandarin'], 
        :dummyanswer2_french => w['dummyanswer2_french'],
        :dummyanswer2_spanish => w['dummyanswer2_spanish'],
        :dummyanswer2_mandarin => w['dummyanswer2_mandarin']

        );
    end
  end

  def update_datasentences
    Datasentence.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/datasentences.json").read)
    json_object.each do |w|
      Datasentence.create!( 
        :question => w['question'],      
        :correctanswer => w['correctanswer'], 
        :dummyanswer1 => w['dummyanswer1'],
        :dummyanswer2 => w['dummyanswer2'],
        :pipisode_id => w['pipisode_id'],
        :programsession_id => w['programsession_id'],
        :programmodule_id => w['programmodule_id'],
        :correct_image_name => w['correct_image_name'],
        :correct_image_url => w['correct_image_url'],
        :question_french => w['question_french'], 
        :question_spanish => w['question_spanish'],
        :question_mandarin => w['question_mandarin'],
        :correct_answer_french => w['correct_answer_french'],
        :correct_answer_spanish => w['correct_answer_spanish'],
        :correct_answer_mandarin => w['correct_answer_mandarin'],
        :dummyanswer1_french => w['dummyanswer1_french'],
        :dummyanswer1_spanish => w['dummyanswer1_spanish'],
        :dummyanswer1_mandarin => w['dummyanswer1_mandarin'], 
        :dummyanswer2_french => w['dummyanswer2_french'],
        :dummyanswer2_spanish => w['dummyanswer2_spanish'],
        :dummyanswer2_mandarin => w['dummyanswer2_mandarin'],
        :story_id => w['story_id'],
        :good_sentence => w['good_sentence'],
        :bad_sentence1 => w['bad_sentence1'],
        :bad_sentence2 => w['bad_sentence2'],
        :bad_sentence3 => w['bad_sentence3'],
        :correctsentence => w['correctsentence'],
        :correctword => w['correctword'],
        :correctimage => w['correctimage'],
        :quiz => w['quiz']
        );
    end
  end

  def update_sentences
    Sentence.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/sentences.json").read)
    json_object.each do |w|
      Sentence.create!( 
        :text => w['text'],      
        :linking_index => w['linking_index'], 
        :section_id => w['section_id'],
        :is_target_sentence => w['is_target_sentence'],
        :is_dummy_sentence => w['is_dummy_sentence'],
        :gametype => w['gametype'],
        :programsession_id => w['programsession_id'],
        :text_french => w['text_french'],
        :text_spanish => w['text_spanish'], 
        :text_mandarin => w['text_mandarin'],
        :cms_id => w['id']
        );
    end
  end

  def update_importantvocabs
    Importantvocab.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/importantvocabs.json").read)
    json_object.each do |w|
      Importantvocab.create!( 
        :pipisode_id => w['pipisode_id'],      
        :story_id => w['story_id'], 
        :word_id => w['word_id'],
        :sentence_id => w['sentence_id']
        );
    end
  end

  def update_stages
    Stage.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/stages.json").read)
    json_object.each do |w|
      Stage.create!( 
        :number => w['number'],      
        :age => w['age'], 
        :description => w['description'],
        :video => w['video'],
        :colour => w['colour'],
        :test_url => w['test_url']
        );
    end
  end

  def update_posts
    Post.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/posts.json").read)
    json_object.each do |w|
      Post.create!( 
        :title => w['title'],      
        :url => w['url'], 
        :video_url => w['video_url'],
        :image_url => w['image_url'],
        :posttype => w['posttype'],
        :subject_reading => w['subject_reading'],
        :subject_maths => w['subject_maths'],
        :subject_world => w['subject_world'],
        :subject_english => w['subject_english'],
        :priority_level => w['priority_level'],
        :created_at => w['created_at'],
        :updated_at => w['updated_at'],
        :lilac => w['lilac'],
        :pink => w['pink'],
        :red => w['red'],
        :yellow => w['yellow'],
        :blue => w['blue'],
        :green => w['green'],
        :orange => w['orange'],
        :linklabel => w['linklabel'],
        :iphone => w['iphone'],
        :ipad => w['ipad'],
        :android => w['android'],
        :mac => w['mac'],
        :pc => w['pc'],
        :body_text => w['body_text']
        );
    end
  end

  def update_storypages
    Storypage.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/storypages.json").read)
    json_object.each do |w|
      Storypage.create!( 
        :story_id => w['story_id'],      
        :text => w['text'], 
        :image => w['backgroundart'],
        :audio => w['audio'],
        :pageorder => w['pageorder'],
        :frenchtext => w['frenchtext'],
        :spanishtext => w['spanishtext'],
        :mandarintext => w['mandarintext'],
        :germantext => w['germantext']
        );
    end
  end

  def update_stories
    Story.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/stories.json").read)
    json_object.each do |w|
      Story.create!( 
        :title => w['title'],      
        :storycoverartwork => w['storycoverartwork'], 
        :storyset_id => w['storyset_id'],
        :programmodule_id => w['programmodule_id'],
        :author => w['author'],
        :description => w['description'],
        :storytype => w['storytype'],
        :publishable => w['publishable'],
        :title_french => w['title_french'],
        :title_spanish => w['title_spanish'],
        :title_mandarin => w['title_mandarin'],
        :description_french => w['description_french'],
        :description_spanish => w['description_spanish'],
        :description_mandarin => w['description_mandarin'],
        :extra_activities => w['extra_activities'],
        :extra_activities_french => w['extra_activities_french'],
        :extra_activities_spanish => w['extra_activities_spanish'],
        :extra_activities_mandarin => w['extra_activities_mandarin'],
        :cms_id => w['id']
        );
    end
  end

  def update_modulessessions
    Programsession.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/programsessions.json").read)
    json_object.each do |w|
      Programsession.create!( 
        :number => w['number'],      
        :learningobjective => w['learningobjective'], 
        :programmodule_id => w['programmodule_id'],
        :story_id => w['story_id'],
        :pipisode_id => w['pipisode_id'],
        :learningvoyagebool => w['learningvoyagebool'],
        :target_number => w['target_number'],
        :highest_number => w['highest_number'],
        :cms_id => w['id']
        );
    end

    Programmodule.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/programmodules.json").read)
    json_object.each do |w|
      Programmodule.create!( 
        :number => w['number'],      
        :colour => w['colour'], 
        :phaselevel => w['phaselevel'],
        :programmename => w['programmename'],
        :cms_id => w['id']
        );
    end

    Section.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/sections.json").read)
    json_object.each do |w|
      Section.create!( 
        :number => w['number'],      
        :sectiontype => w['sectiontype'], 
        :programsession_id => w['programsession_id'],
        :game_id => w['game_id'],
        :cms_id => w['id'],
        :programmodule_id => w['programmodule_id']
        );
    end

    Game.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/games.json").read)
    json_object.each do |w|
      Game.create!( 
        :name => w['name'],      
        :gametype => w['gametype'], 
        :description => w['description'],
        :skill => w['skill'],
        :overview => w['overview'],
        :multiplayer => w['multiplayer'],      
        :labeltext => w['labeltext'], 
        :picture_game => w['picture_game'],
        :label_game => w['label_game'],
        :cms_id => w['id']
        );
    end
  end

  def update_data
    DataPhoneme.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/data_phonemes.json").read)
    json_object.each do |w|
      DataPhoneme.create!( 
        :section_id => w['section_id'],      
        :phoneme_id => w['phoneme_id'], 
        :is_target_phoneme => w['is_target_phoneme'],
        :is_dummy_phoneme => w['is_dummy_phoneme'],
        :programsession_id => w['programsession_id']
        );
    end

    DataWord.delete_all
    json_object = JSON.parse(open("http://pipcms.herokuapp.com/data_words.json").read)
    json_object.each do |w|
      DataWord.create!( 
        :section_id => w['section_id'],      
        :word_id => w['word_id'], 
        :is_target_word => w['is_target_word'],
        :is_dummy_word => w['is_dummy_word'],
        :programsession_id => w['programsession_id']
        );
    end
  end

  

  def about
  end

  def pippad  
  end

  def pricing 
  end

  def fullappdownload 
  end

  def coming
  end

  def apps
    @products = Product.all
  end

  def info
  end

  def videos
  end

  def partnershipprogramme
  end

  def glossary
    @glossaryterms = Glossaryterm.all
  end
  
  def learninggames
  end

  def curriculum
  end

  def payment
  end

  def jobs
  end

  def payment1
    Stripe.api_key = "sk_live_2Fe6QTbfXocPYYcCLcEMUFCr"

    # Get the credit card details submitted by the form
    token = params[:stripeToken]
    email = params[:stripeEmail]

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => 50, # amount in cents, again
        :currency => "gbp",
        :card => token,
        :description => email
      )

      # Create new user in the database
      user = User.create(
        :email => email,
        :payment_received => true
        )

    rescue Stripe::CardError => e
      redirect_to errors_url
    end

  end

  def errors
  end

  def allgames
    @learninggames = Learninggame.all
  end

  # def testusername
  #   @params = params
    
  #   @email = @params['email']
  #   password = @params['password']
  #   user = User.find_by_email(@email)
  #   if user
  #     if user.password == password
  #       return true
  #       respond_to do |format|
  #         format.html # index.html.erb
          
  #       end
  #     else
  #       return false
  #     end
  #   else
  #     return false
  #   end
  # end

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

  def teacherdownload
  
  end

  

end
