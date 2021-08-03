class CardCheckService
  def initialize(user, amount)
    @user = user
    @amount = amount
  end

  def call
    if balance_check
      token = "ok"
    elsif card_error_case(card)
      token = "card_error"
    else
      token = "payment_error"
    end
  end

  private

  attr_reader :user, :amount

  def balance_check
    # balance must be taken from some kind of account - user?
    user.balance >= ticket.price
  end


  def errors_check
    card_error_case ? "card_error" : "payment_error"
  end

  def card_error_case
    # check card number or smoething, idk
  end
end
