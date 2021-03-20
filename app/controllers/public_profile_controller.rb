class PublicProfileController < ApplicationController
  before_action :set_public_profile, only: [:show, :edit, :update, :destroy]
  def index
      @public_profiles = PublicProfile.all
  end

  def show 
  end

  def new
      @public_profile = PublicProfile.new
  end

  def create
      @public_profile = PublicProfile.new(public_profile_params)
      if @public_profile.save
          redirect_to public_profile_path(@public_profile)
      else
          render :new
      end
  end

  def edit
  end

  def update
      @public_profile.update(public_profile_params)
      redirect_to public_profile_path(@public_profile)
  end

  def destroy
      @public_profile.destroy
      redirect_to public_profiles_path
  end

  private

  def set_public_profile
      @public_profile = PublicProfile.find(params[:id])
  end

  def public_profile_params
      params.require(:public_profile).permit(:name)
  end
end
