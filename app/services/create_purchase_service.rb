class CreatePurchaseService
  def call(ticket, params)
    ActiveRecord::Base.transaction do
      Purchase.create!(ticket: ticket)
      ticket.update!(sold: true)
    end
  end
end
