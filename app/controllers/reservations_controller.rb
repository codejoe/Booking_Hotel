class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:edit]

  def new
    @reservation = Reservation.new
  end

  def create
  end

  def edit

  end

  private 

    def set_reservation
      @reservation = Reservation.new
    end

    def reservation_params
      params.require(:reservation).permit(:user_id, :room_id, )
    end
end
