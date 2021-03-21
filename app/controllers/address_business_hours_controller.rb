class AddressBusinessHoursController < ApplicationController
  before_action :set_address_business_hour, only: [:show, :edit, :update, :destroy]
  def index
      @address_business_hours = AddressBusinessHour.all
  end

  def show 
  end

  def new
      @address_business_hour = AddressBusinessHour.new
  end

  def create
      @address_business_hour = AddressBusinessHour.new(address_business_hour_params)
      if @address_business_hour.save
          redirect_to address_business_hour_path(@address_business_hour)
      else
          render :new
      end
  end

  def edit
  end

  def update
      @address_business_hour.update(address_business_hour_params)
      redirect_to address_business_hour_path(@address_business_hour)
  end

  def destroy
      @address_business_hour.destroy
      redirect_to address_business_hours_path
  end

  private

  def set_address_business_hour
      @address_business_hour = AddressBusinessHour.find(params[:id])
  end

  def address_business_hour_params
      params.require(:address_business_hour).permit(:name)
  end
end
