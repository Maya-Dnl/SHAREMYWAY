class EventsController < ApplicationController

  # def index
  #   @events = Event.all
  #   if params[:query].present?
  #     @events = @events.where(address: params[:query])
  #   end
  # end

  def index
    @events = Event.all
    if params[:query].present?
      @events = @events.where('address ILIKE ?', "%#{params[:query]}%")
    end
  end

  # def new
  #   @event = Event.new
  # end

  # def create
  #   @event = Event.new(event_params)
  #   @event.user = current_user
  #   if @event.save!
  #     redirect_to @event, notice: 'Event was successfully created.'
  #   else
  #     render :new
  #   end
  # end

  # def show
  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  # private

  # def set_event
  #   @event = Event.find(params[:id])
  # end

  # def event_params
  #   params.require(:event).permit(:name, :description, :address, :date, :image)
  # end

end
