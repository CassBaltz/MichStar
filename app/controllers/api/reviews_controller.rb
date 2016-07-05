class Api::ReviewsController < ApplicationController

	def create
		@review = Review.new(review_params)

		if @review.save
			render "api/reviews/#{@review.id}"
		else
			@errors = @user.errors.full_messages
			render "api/shared/error", status: 422
		end
	end

	def show
		@review = Review.find(params[:id])
	end

  def update
    @review = Review.find(params[:id])
    @review.update_attributes(review_params)
    render "api/reviews/#{@review.id}"
  end

  def destroy
    @review = Review.find(params[:id])
    @id = @review.id
    @review.destroy
    render (json: {@id})
  end

  private
  def review_params
    params.require(:review).permit(:user_id, :rest_id, :content, :rating)
  end
end