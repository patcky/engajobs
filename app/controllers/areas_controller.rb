class AreasController < ApplicationController
    before_action :set_area, only: [ :show, :edit, :update, :destroy]
    def index
        @areas = policy_scope(Area)
    end

    def show; end

    def new
        @area = Area.new
        authorize @area
        @area.specialities.build
    end

    def create
        @area = Area.new(area_params)
        authorize @area
        if @area.save
            redirect_to area_path(@area)
        else
            render :new
        end
    end

    def edit; end

    def update
        @area.update(area_params)
        redirect_to area_path(@area)
    end

    def destroy
        @area.destroy
        redirect_to areas_path
    end

    private

    def set_area
        @area = Area.find(params[:id])
        authorize @area
    end

    def area_params
        params.require(:area).permit(:name, specialities_attributes: [:id, :name])
    end
end
