class LinksController < ApplicationController
    before_action :set_link, only: [:show, :edit, :update, :destroy]
    before_action :set_public_profile, only: [:new, :create ]
  
  def index
      @links = policy_scope(Link)
  end

  def show 
  end

  def new
      @link = Link.new
      @link.public_profile = @public_profile
      authorize @link
  end

  def create
      @link = Link.new(link_params)
      @link.public_profile = @public_profile
      authorize @link
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
      redirect_to public_profile_links
  end

  private

  def set_link
      @link = Link.find(params[:id])
      authorize @link
  end

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def link_params
      params.require(:link).permit(:link_type, :url)
  end
end
