class EventsController < ApplicationController
    def index
        @events = Event.all    
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = current_user.events.new 
    end

    def create
        @event = current_user.events.new(event_params)

        if @event.save
            redirect_to @event
        else
            render :new
        end
    end


    private
    def event_params
        params.require(:event).permit(:date, :creator_id)
    end
end
