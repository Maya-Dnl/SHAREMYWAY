class EventsController < ApplicationController

  before_action :set_event, only: [:show, :destroy, :edit, :update]

  def index
    @events = Event.all
    if params[:query].present?
      @events = @events.where('address ILIKE ?', "%#{params[:query]}%")
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def my_events
    @events = Event.where(user: current_user)
  end

  def edit
  end

  def update
    @event.update(event_params)

    redirect_to event_path(@event), notice: 'Event was successfully updated.'
  end

  def destroy
    @event.destroy
    redirect_to my_events_events_path, notice: 'Event was successfully delete.', status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :address, :category, :date, :photo)
  end
end
