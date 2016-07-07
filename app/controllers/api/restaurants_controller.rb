class Api::RestaurantsController < ApplicationController

	def index
    @restaurants = Restaurant.all
  end

	def show
		@restaurant = Restaurant.find(params[:id])
		@reviews = @restaurant.build_reviews

		@reservation_options = ReservationOption.where('reservation_time > ? AND reserved = ? AND rest_id = ?', Time.now, false, params[:id]).order("reservation_time ASC").limit(100)
		debugger 
    if params[:date]
      @reservation_options = @reservation_options.select{ |r_o| r_o.reservation_time.to_date.to_s == params[:date] }
    end

    if params[:seats]
      @reservation_options = @reservation_options.select{ |r_o| r_o.table_size == params[:seats].to_i }
    end
	end

end
