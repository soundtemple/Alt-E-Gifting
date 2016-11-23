class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    if !current_user
      redirect_to '/'
    end
    @favours = Favour.all
    @titles = Title.all

    @categories = @favours.collect{ |f| f.category }.uniq

    @background_colours = ['teal','mistyrose','black', 'red']

    @background_images = ['puppy', 'kitten', 'ostrich', 'parrot']
  end

  def create
    card = Card.new
    card.user_id = current_user
    card.recipient_email = params[:recipient_email]
    card.recipient_name = params[:recipient_name]
    card.sign_off = params[:sign_off]
    card.title = params[:title]
    card.message = params[:message]
    card.background_img = params[:background_img]
    card.background_col = params[:background_col]
    if card.save
      redirect_to '/success'
    else
      render :new
    end
  end

  def show
    @card = Card.find_by(id: params[:id])
    
  end

  def edit
    @card = Card.find_by(id: params[:id])
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.user_id = current_user
    @card.recipient_email = params[:recipient_email]
    @card.recipient_name = params[:recipient_name]
    @card.sign_off = params[:sign_off]
    @card.title = params[:title]
    @card.message = params[:message]
    @card.background_img = params[:background_img]
    @card.background_col = params[:background_col]
    if @card.save
      redirect_to '/success'
    else
      render :new
    end
  end

  def destroy
    @card = card.find_by(id: params[:id])
    @card.delete
    if @card.delete
      redirect_to '/cards'
    else
      render template: "session"
    end
  end
end
