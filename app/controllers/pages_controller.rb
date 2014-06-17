class PagesController < ApplicationController

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
    @user = User.new
  end

  def banks
    @phonemes = Phoneme.where(:completed => true)
    @alphabet = ('a'..'z').to_a
    @keywords = Word.where(:tricky => true)
    @words = Word.where(:completed => true)
  end

  def about
  end

  def coming
  end

  def apps
    @products = Product.all
  end

  def videos
  end

  def partnershipprogramme
  end

  def glossary
    @glossaryterms = Glossaryterm.all
  end

  def curriculum
  end

  def jobs
  end

  def payment
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
