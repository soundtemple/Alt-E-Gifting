class CardMailer < ApplicationMailer
  default from: 'alte-gifting@gmail.com'

  def send_card(user, card)
    @user = user
    @card = card
    @recipient = @card.recipient_email

    mail(to: @recipient, subject: "You've received an Alt-E-Git Card")

  end

end
