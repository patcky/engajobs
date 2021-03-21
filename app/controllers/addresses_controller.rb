class AddressesController < ApplicationController
  before_action :set_address, :set_public_profile, only: [:show, :edit, :update, :destroy]
  def index
      @addresses = Address.all
  end

  def show 
  end

  def new
      @address = Address.new
      @address.public_profile = @public_profile
  end

  def create
      @address = Address.new(address_params)
      @address.public_profile = @public_profile
      if @address.save
          redirect_to address_path(@address)
      else
          render :new
      end
  end

  def edit
  end

  def update
      @address.update(address_params)
      redirect_to address_path(@address)
  end

  def destroy
      @address.destroy
      redirect_to addresss_path
  end

  private

  def set_address
      @address = Address.find(params[:id])
  end

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def address_params
      params.require(:address).permit(:name)
  end
end
