class ProviderSpecialitiesController < ApplicationController
    before_action :set_provider_speciality, only: [ :show, :edit, :update, :destroy]
    before_action :set_public_profile, only: [:new, :create ]

    def index
        set_public_profile
        @provider_specialities = policy_scope(ProviderSpeciality).where(public_profile: @public_profile).order(created_at: :desc)
    end
  
    def show; end

    def new
        @provider_speciality = ProviderSpeciality.new
        @provider_speciality.public_profile = @public_profile
        @areas = Area.all
        @specialities = Speciality.all
        authorize @provider_speciality
    end
  
    def create
        @provider_speciality = ProviderSpeciality.new(provider_speciality_params)
        @provider_speciality.public_profile = @public_profile
        set_speciality
        authorize @provider_speciality

        if @provider_speciality.save
            redirect_to provider_speciality_path(@provider_speciality)
        else
            render :new
        end
    end
  
    def edit; end

    def update
        @provider_speciality.update(provider_speciality_params)
        redirect_to provider_speciality_path(@provider_speciality)
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
        #obs revisar esse método
        @speciality = Speciality.find(params[:provider_speciality][:speciality_id])
    end

    def set_provider_speciality
        @provider_speciality = ProviderSpeciality.find(params[:id])
        authorize @provider_speciality
    end

    def provider_speciality_params
        params.require(:provider_speciality).permit(:speciality_id)
    end
end
