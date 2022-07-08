class BookingsController < ApplicationController

  def new
    @booking = Booking.new(room_id: params[:room_id])
    @room = Room.find(params[:room_id])
  end

  def create
    @booking = Booking.new(
      user_id: current_user.id,
      room_id: params[:room_id],
      starts_at: booking_params[:starts_at],
      ends_at: booking_params[:ends_at]
    )
    @room = Room.find(params[:room_id])

    if @booking.save
      redirect_to booking_path(@booking.id), notice: "Félicitation ! Vous avez réservé. "
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @room = Room.find(@booking.room_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
