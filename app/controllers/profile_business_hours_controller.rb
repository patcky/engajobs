class ProfileBusinessHoursController < ApplicationController
  before_action :set_profile_business_hour, only: [:show, :edit, :update, :destroy]
  def index
      @profile_business_hours = ProfileBusinessHour.all
  end

  def show 
  end

  def new
      @profile_business_hour = ProfileBusinessHour.new
  end

  def create
      @profile_business_hour = ProfileBusinessHour.new(profile_business_hour_params)
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
  end

  def profile_business_hour_params
      params.require(:profile_business_hour).permit(:name)
  end
end
