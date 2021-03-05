class AttendancesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event.attendances.create!(attendee: current_user)
    redirect_to events_path
  end

  def destroy
    attendee = current_user.attendances.find(params[:id])
    attendee.destroy
    redirect_to events_path
  end
end
