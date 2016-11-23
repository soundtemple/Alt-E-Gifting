class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new

    if !current_user
      redirect_to '/'
    end

    @card = Card.new
    @card.recipient_email = ""
    @card.recipient_name = ""
    @card.title_id = 2
    @card.sign_off = ""
    @card.message = Favour.first
    @card.background_img = ""
    @card.background_col = "#46c1c2"

  end

  def create
    card = Card.new
    card.user_id = current_user
    card.recipient_email = params[:recipient_email]
    card.recipient_name = params[:recipient_name]
    card.title_id = params[:title].to_i
    card.sign_off = params[:sign_off]
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

  def show
    @card = Card.find_by(id: params[:id])

  end

  def edit
    @card = Card.find_by(id: params[:id])
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.recipient_email = params[:recipient_email]
    @card.recipient_name = params[:recipient_name]
    @card.title_id = params[:title].to_i
    @card.sign_off = params[:sign_off]
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

  def success

    render :success
  end
end
