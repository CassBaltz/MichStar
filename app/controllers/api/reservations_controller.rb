class Api::ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    reservation_option = ReservationOption.find(reservation_params[:reservation_option_id])
    reservation_option.reserved = true
    reservation_option.save
    @reservation.save
    @user = @reservation.user
    @reservations = @user.reservations
    @reviews = @user.reviews
    render "api/users/profile"
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :reservation_option_id)
  end

end
