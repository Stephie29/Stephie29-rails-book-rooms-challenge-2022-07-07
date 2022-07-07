class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def show
    @booking = Booking.new
  end
end
