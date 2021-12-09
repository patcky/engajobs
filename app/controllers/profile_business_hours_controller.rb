class ProfileBusinessHoursController < ApplicationController
  before_action :set_profile_business_hour, only: [:show, :edit, :update, :destroy]
  before_action :set_public_profile, only: [:new, :create ]

  def index
      @profile_business_hours = policy_scope(ProfileBusinessHour)
  end

  def show 
  end

  def new
      @profile_business_hour = ProfileBusinessHour.new
      @profile_business_hour.public_profile = @public_profile
      authorize @profile_business_hour
  end

  def create
      @profile_business_hour = ProfileBusinessHour.new(profile_business_hour_params)
      @profile_business_hour.public_profile = @public_profile
      authorize @profile_business_hour
      if @profile_business_hour.save
          redirect_to profile_business_hour_path(@profile_business_hour)
      else
          render :new
      end
  end

  def edit
  end

  def update
      @profile_business_hour.update(profile_business_hour_params)
      redirect_to profile_business_hour_path(@profile_business_hour)
  end

  def destroy
      @profile_business_hour.destroy
      redirect_to profile_business_hours_path
  end

  private

  def set_profile_business_hour
      @profile_business_hour = ProfileBusinessHour.find(params[:id])
      authorize @profile_business_hour
  end

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def profile_business_hour_params
      params.require(:profile_business_hour).permit(:day, :open_time, :close_time)
  end
end
