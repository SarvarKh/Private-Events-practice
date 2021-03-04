class AttendancesController < ApplicationController
    def create
        @event = Event.find(params[:event_id])
        @event.attandancees.create!(user: current_user)
        redirect_to @event
    end
end
