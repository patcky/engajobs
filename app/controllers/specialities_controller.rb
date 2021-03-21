class SpecialitiesController < ApplicationController
    before_action :set_specialty, :set_area, only: [:show, :edit, :update, :destroy]
  
    def show 
    end
  
    def new
        @speciality = Speciality.new
        @speciality.area = @area
    end
  
    def create
        @speciality = Speciality.new(speciality_params)
        @speciality.area = @area
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
        redirect_to specialities_path
    end
  
    private
  
    def set_specialty
        @speciality = Speciality.find(params[:id])
    end
    
    def set_area
        @area = Area.find(params[:area_id])
    end
  
    def speciality_params
        params.require(:speciality).permit(:name)
    end
end
