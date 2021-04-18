class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :edit, :update, :destroy]
    before_action :set_public_profile, only: [:new, :create ]
    
  def index
      @reviews = policy_scope(Review)
  end

  def show 
  end

  def new
      @review = Review.new
      @review.user = current_user
      @review.public_profile = @public_profile
      authorize @review
  end

  def create
      @review = Review.new(review_params)
      @review.user = current_user
      @review.public_profile = @public_profile
      authorize @review
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
      authorize @review
  end

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def review_params
      params.require(:review).permit(:rating)
  end
end
