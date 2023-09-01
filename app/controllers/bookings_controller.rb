class BookingsController < ApplicationController

  before_action :set_booking, only: [:show]

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
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # We recuperate our bookings with their IDs
  end

  def edit
  end

  def update
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
