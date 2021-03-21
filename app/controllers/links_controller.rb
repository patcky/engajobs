class LinksController < ApplicationController
  before_action :set_link, :set_public_profile, only: [:show, :edit, :update, :destroy]
  
  def index
      @links = Link.all
  end

  def show 
  end

  def new
      @link = Link.new
      @link.public_profile = @public_profile
  end

  def create
      @link = Link.new(link_params)
      @link.public_profile = @public_profile
      if @link.save
          redirect_to link_path(@link)
      else
          render :new
      end
  end

  def edit; end

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

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def link_params
      params.require(:link).permit(:link_type, :url)
  end
end
