class SessionController < ApplicationController
  def new
    if current_user
      @saved_cards = Card.where(user_id: current_user.id)
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/cards'
    else
      render :new
    end
  end

  def destroy
   session[:user_id] = nil
   redirect_to "/cards"
  end

  def new_user
    @type = "warning"
    new_user = User.new
    new_user.email = params[:email]
    new_user.password = params[:password]
    if !new_user.valid?
      @errors = new_user.errors.messages
      render :session
    elsif new_user.valid?
      new_user.save
      @errors = ["Success. Welcome to alt-e."]
      @type = "success"
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
      end
      redirect_to "/session"
    end
  end



end
