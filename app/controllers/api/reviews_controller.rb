class Api::ReviewsController < ApplicationController

	def create
		review = Review.new(review_params)
		if review.save
			@review = review.build_review
			redirect_to api_review_url(review)
		else
			@errors = @user.errors.full_messages
			render "api/shared/error", status: 422
		end
	end

	def show
		review = Review.find(params[:id])
		@review = review.build_review
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
    render json: @id
  end

  private
  def review_params
    params.require(:review).permit(:user_id, :rest_id, :content, :rating)
  end
end
