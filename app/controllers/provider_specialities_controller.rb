class ProviderSpecialitiesController < ApplicationController
    before_action :set_provider_speciality, only: [:destroy]
    def index
        @provider_specialities = ProviderSpeciality.all
    end
  
    def new
        @provider_speciality = ProviderSpeciality.new
    end
  
    def create
        @provider_speciality = ProviderSpeciality.new
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
  
    def set_provider_speciality
        @provider_speciality = ProviderSpeciality.find(params[:id])
    end
end
