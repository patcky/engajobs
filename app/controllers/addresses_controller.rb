class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  def index
      @addresses = Address.all
  end

  def show 
  end

  def new
      @address = Address.new
  end

  def create
      @address = Address.new(address_params)
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

  def address_params
      params.require(:address).permit(:name)
  end
end
