class AreasController < ApplicationController
    before_action :set_area, only: [:show, :edit, :update]
    def index
        @areas = Area.all
    end

    def show 
    end

    def new
        @area = Area.new
    end

    def create
        @area = Area.new(params[:area])
        if @area.save
            redirect_to area_path(@area)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @area.update(params[:area])
        redirect_to area_path(@area)
    end

    private

    def set_area
        @area = Area.find(params[:id])
    end

    def area_params
        params.require(:area).permit(:name)
    end
end
