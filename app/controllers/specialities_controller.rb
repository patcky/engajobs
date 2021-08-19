class SpecialitiesController < ApplicationController
    before_action :set_speciality, only: [:show, :edit, :update, :destroy]
    before_action :set_area, only: [:new, :create ]

    def show 
    end
  
    def new
        @speciality = Speciality.new
        @speciality.area = @area
        authorize @speciality
    end
  
    def create
        @speciality = Speciality.new(speciality_params)
        @speciality.area = @area
        authorize @speciality
        if @speciality.save
            redirect_to speciality_path(@speciality)
        else
            render :new
        end
    end
  
    def edit
    end
  
    def update
        @speciality.update(speciality_params)
        redirect_to speciality_path(@speciality)
    end
  
    def destroy
        @speciality.destroy
        redirect_to area_specialities_path
    end
  
    private
  
    def set_speciality
        @speciality = Speciality.find(params[:id])
        authorize @speciality
    end
    
    def set_area
        @area = Area.find(params[:area_id])
    end
  
    def speciality_params
        params.require(:speciality).permit(:name, specialities_ids: [])
    end
end
