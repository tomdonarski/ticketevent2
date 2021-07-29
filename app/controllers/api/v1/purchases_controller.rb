module Api
  module V1
    class PurchasesController < ApplicationController
      deserializable_resource :purchase, only: [:create]

      def create(service = CreatePurchaseService.new)
        service.call(find_ticket, purchase_params)
      end

      private

      def purchase_params
        params.require(:purchase).permit(:ticket_id)
      end

      def find_ticket
        byebug
        Ticket.find(params[:_jsonapi][:data][:attributes][:ticket_id])
      end
    end
  end
end
