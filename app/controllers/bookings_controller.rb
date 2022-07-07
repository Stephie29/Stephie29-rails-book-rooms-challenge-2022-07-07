class BookingsController < ApplicationController
  before_action :set_list, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @bookmark.room = @room
    if @booking.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
