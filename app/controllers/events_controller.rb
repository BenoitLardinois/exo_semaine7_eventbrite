class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  
  
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end
  
  def create
    new_event.organizer = current_user,
    new_event = Event.new
    new_event.id = Event.all.length + 1
    new_event.title = params[:event_title]
    new_event.start_date = params[:event_start_date]
    new_event.duration = params[:event_duration]
    new_event.description = params[:event_description]
    new_event.price = params[:event_price]
    new_event.location = params[:event_location]
    new_event.organizer_id = params[:event_organizer_id] 
    if new_event.save
      redirect_to events_path
    else
      render "/events/new"
    end
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    event_params = params.require(:event).permit(:description, :location, :price)
    @event.update(event_params)
    redirect_to event_path
  end
  
  def destroy
  end
end
