class Api::ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    render "api/reservations/#{@reservation.id}"
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :reservation_option_id)
  end

end
