class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new

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
    card.title_id = params[:title].to_i
    card.message = params[:message]
    card.background_img = params[:background_img]
    card.background_col = params[:background_col]

    if card.save
      if params[:action].include?("Send")
      end
      redirect_to '/success'
    else
      redirect_to '/cards'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def success

    render :success
  end
end
