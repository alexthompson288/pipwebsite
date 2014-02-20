class PagesController < ApplicationController
  def home
  end

  def home1
    @stages = Stage.order(:number)
    @products = Product.all
    
  end

  def about
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
