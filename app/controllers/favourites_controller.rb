class FavouritesController < ApplicationController
  before_action :set_favourite, only: [:destroy]
  def index
      @favourites = Favourite.all
  end

  def new
      @favourite = Favourite.new
  end

  def create
      @favourite = Favourite.new
      @favourite.save
      redirect_to favourite_path(@favourite)
  end

  def destroy
      @favourite.destroy
      redirect_to favourites_path
  end

  private

  def set_favourite
      @favourite = Favourite.find(params[:id])
  end
end
