class ReviewsController < ApplicationController
  before_action :set_review, :set_public_profile, only: [:show, :edit, :update, :destroy]
  def index
      @reviews = Review.all
  end

  def show 
  end

  def new
      @review = Review.new
      @review.user = current_user
      @review.public_profile = @public_profile
  end

  def create
      @review = Review.new(review_params)
      @review.user = current_user
      @review.public_profile = @public_profile
      if @review.save
          redirect_to review_path(@review)
      else
          render :new
      end
  end

  def edit
  end

  def update
      @review.update(review_params)
      redirect_to review_path(@review)
  end

  def destroy
      @review.destroy
      redirect_to reviews_path
  end

  private

  def set_review
      @review = Review.find(params[:id])
  end

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def review_params
      #params.require(:review).permit(:description)
      #TODO: add some valuation field to reviews
  end
end
