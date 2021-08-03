module Api
  module V1
    class PurchasesController < ApplicationController
      deserializable_resource :purchase, only: [:create]

      def create(service = CreatePurchaseService.new(find_ticket, purchase_params))
        service.call
      end

      private

      def purchase_params
        params.require(:purchase).permit(:ticket_id, :card_number)
      end

      def find_ticket
        Ticket.find(params[:_jsonapi][:data][:attributes][:ticket_id])
      end
    end
  end
end
