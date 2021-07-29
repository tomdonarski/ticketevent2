module Api
  module V1
    class PurchasesController < ApplicationController
      deserializable_resource :purchase, only: [:create]

      def create
        @purchase = Purchase.new(purchase_params).save!
      end

      private

      def purchase_params
        params.require(:purchase).permit(:ticket_id)
      end
    end
  end
end
