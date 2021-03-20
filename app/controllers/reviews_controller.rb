class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  def index
      @reviews = Review.all
  end

  def show 
  end

  def new
      @review = Review.new
  end

  def create
      @review = Review.new(review_params)
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

  def review_params
      #params.require(:review).permit(:description)
      #TODO: add some valuation field to reviews
  end
end
