class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]
  def index
      @links = Link.all
  end

  def show 
  end

  def new
      @link = Link.new
  end

  def create
      @link = Link.new(link_params)
      if @link.save
          redirect_to link_path(@link)
      else
          render :new
      end
  end

  def edit
  end

  def update
      @link.update(link_params)
      redirect_to link_path(@link)
  end

  def destroy
      @link.destroy
      redirect_to links_path
  end

  private

  def set_link
      @link = Link.find(params[:id])
  end

  def link_params
      params.require(:link).permit(:name)
  end
end
