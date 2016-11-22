class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
  end

  def create
    card = Card.new
    card.user_id = current_user
    card.recipient_email = params[:recipient_email]
    card.recipient_naeme = params[:recipient_name]
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

  def edit
  end

  def update
  end

  def destroy
  end
end
