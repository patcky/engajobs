class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  before_action :set_public_profile, only: [:new, :create ]

  def index
      @addresses = policy_scope(Address)
  end

  def show 
  end

  def new
      @address = Address.new
      @address.public_profile = @public_profile
      authorize @address
  end

  def create
      @address = Address.new(address_params)
      @address.public_profile = @public_profile
      authorize @address
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
      authorize @address
  end

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def address_params
      params.require(:address).permit(
        :street,
        :number,
        :complement,
        :district,
        :city,
        :state,
        :country
      )
  end
end
