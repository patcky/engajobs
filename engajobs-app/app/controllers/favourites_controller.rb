class FavouritesController < ApplicationController
    before_action :set_favourite, only: [:show, :edit, :update, :destroy]
    before_action :set_public_profile, only: [:new, :create ]
    
  def index
      @favourites = policy_scope(Favourite)
  end

  def new
      @favourite = Favourite.new
      @favourite.user = current_user
      @favourite.public_profile = @public_profile
      authorize @favourite
  end

  def create
      @favourite = Favourite.new
      @favourite.user = current_user
      @favourite.public_profile = @public_profile
      authorize @favourite
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
      authorize @favourite
  end

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end
end
