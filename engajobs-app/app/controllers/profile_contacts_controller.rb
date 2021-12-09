class ProfileContactsController < ApplicationController
    before_action :set_profile_contact, only: [:show, :edit, :update, :destroy]
    before_action :set_public_profile, only: [:new, :create ]
  
  def index
      @profile_contacts = policy_scope(ProfileContact)
  end

  def show 
  end

  def new
      @profile_contact = ProfileContact.new
      @profile_contact.public_profile = @public_profile
      authorize @profile_contact
  end

  def create
      @profile_contact = ProfileContact.new(profile_contact_params)
      @profile_contact.public_profile = @public_profile
      authorize @profile_contact
      if @profile_contact.save
          redirect_to profile_contact_path(@profile_contact)
      else
          render :new
      end
  end

  def edit
  end

  def update
      @profile_contact.update(profile_contact_params)
      redirect_to profile_contact_path(@profile_contact)
  end

  def destroy
      @profile_contact.destroy
      redirect_to profile_contacts_path
  end

  private

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def set_profile_contact
      @profile_contact = ProfileContact.find(params[:id])
      authorize @profile_contact
  end

  def profile_contact_params
      params.require(:profile_contact).permit(:profile_contact_value, :profile_contact_type)
  end
end
