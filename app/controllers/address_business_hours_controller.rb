class AddressBusinessHoursController < ApplicationController
  before_action :set_address_business_hour, only: [:show, :edit, :update, :destroy]
  before_action :set_address, only: [:new, :create ]

  def index
      @address_business_hours = policy_scope(AddressBusinessHour)
  end

  def show 
  end

  def new
      @address_business_hour = AddressBusinessHour.new
      @address_business_hour.address = @address
      authorize @address_business_hour
  end

  def create
      @address_business_hour = AddressBusinessHour.new(address_business_hour_params)
      @address_business_hour.address = @address
      authorize @address_business_hour
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
      authorize @address_business_hour
  end

  def set_address
    @address = Address.find(params[:address_id])
  end

  def address_business_hour_params
      params.require(:address_business_hour).permit(:day, :open_time, :close_time)
  end
end
