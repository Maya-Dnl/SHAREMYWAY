class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :destroy]
  # before_action :set_event, only: [:show, :destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.event = @event
    if @booking.save!
      redirect_to bookings_path, notice: 'You have successfully joined the event!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # We recuperate our bookings with their ID
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully delete.', status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
