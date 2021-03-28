class ProviderSpecialitiesController < ApplicationController
    before_action :set_provider_speciality, only: [:destroy]
    def index
        @provider_specialities = ProviderSpeciality.all
    end
  
    def new
        @provider_speciality = ProviderSpeciality.new
        @provider_speciality.public_profile = @public_profile
        @provider_speciality.speciality = @speciality
    end
  
    def create
        @provider_speciality = ProviderSpeciality.new
        @provider_speciality.public_profile = @public_profile
        @provider_speciality.speciality = @speciality

        if @provider_speciality.save
            redirect_to provider_speciality_path(@provider_speciality)
        else
            render :new
        end
    end
  
    def destroy
        @provider_speciality.destroy
        redirect_to provider_specialities_path
    end
  
    private
  
    def set_public_profile
        @public_profile = PublicProfile.find(params[:public_profile_id])
    end

    def set_speciality
        @speciality = Speciality.find(params[:speciality])
    end

    def set_provider_speciality
        @provider_speciality = ProviderSpeciality.find(params[:id])
    end
end
