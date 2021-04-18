class AddressContactsController < ApplicationController
  before_action :set_address_contact, :set_address, only: [:show, :edit, :update, :destroy]
  def index
      @address_contacts = policy_scope(AddressContact)
  end

  def show 
  end

  def new
      @address_contact = AddressContact.new
      @address_contact.address = @address
      authorize @address_contact
  end

  def create
      @address_contact = AddressContact.new(address_contact_params)
      @address_contact.address = @address
      authorize @address_contact
      if @address_contact.save
          redirect_to address_contact_path(@address_contact)
      else
          render :new
      end
  end

  def edit
  end

  def update
      @address_contact.update(address_contact_params)
      redirect_to address_contact_path(@address_contact)
  end

  def destroy
      @address_contact.destroy
      redirect_to address_contacts_path
  end

  private

  def set_address_contact
      @address_contact = AddressContact.find(params[:id])
      authorize @address_contact
  end

  def set_address
    @address = Address.find(params[:address_id])
  end

  def address_contact_params
      params.require(:address_contact).permit(:address_contact_value, :address_contact_type)
  end
end
