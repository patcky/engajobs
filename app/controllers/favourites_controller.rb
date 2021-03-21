class FavouritesController < ApplicationController
  before_action :set_favourite, :set_public_profile, only: [:destroy]
  def index
      @favourites = Favourite.all
  end

  def new
      @favourite = Favourite.new
      @favourite.user = current_user
      @favourite.public_profile = @public_profile
  end

  def create
      @favourite = Favourite.new
      @favourite.user = current_user
      @favourite.public_profile = @public_profile
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

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end
end
