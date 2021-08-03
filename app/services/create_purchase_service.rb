class CreatePurchaseService
  def initialize(ticket, params)
    @ticket = ticket
    @amount = ticket.price
    # @user = User.find(params[:_jsonapi][:data][:attributes][:user_id])
  end

  def call
    ActiveRecord::Base.transaction do
      ticket.lock!
      # user.lock!
      # token = CardCheckService.new(user, amount)

      # result = Adapters::Payment::Gateway.charge(amount: amount, token: token)
      # user.balance -= result.amount
      Purchase.create!(ticket: ticket)
      ticket.update!(sold: true)
    end
  end

  private

  attr_reader :ticket, :amount#, :user
end
