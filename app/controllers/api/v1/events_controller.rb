module Api
  module V1
    class EventsController < ApplicationController
      def index
        render jsonapi: Event.all
      end
      def show
        event = Event.find(params[:id])
        render jsonapi: event
      end
    end
  end
end
