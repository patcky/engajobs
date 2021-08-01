require 'pry-byebug'
class PublicProfilesController < ApplicationController
  before_action :set_public_profile, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_authorized, only: :user_public_profiles

  def index
    @public_profiles = policy_scope(PublicProfile).order(created_at: :desc)
  end

  def user_public_profiles
    @public_profiles = policy_scope(PublicProfile).where(user: current_user).order(created_at: :desc)
  end

  def show 
  end

  def new
    @public_profile = PublicProfile.new
    authorize @public_profile
    @public_profile.provider_specialities.build
    @public_profile.profile_languages.build
    @public_profile.links.build
  end

  def create
    @public_profile = PublicProfile.new(public_profile_params)
    @public_profile.user = current_user
    authorize @public_profile
    if @public_profile.save
        redirect_to public_profile_path(@public_profile)
    else
        render :new
    end
  end

  def edit
  end

  def update
    binding.pry
    @public_profile.update(public_profile_params)
    redirect_to public_profile_path(@public_profile)
  end

  def destroy
    binding.pry
    @public_profile.destroy
    redirect_to public_profiles_path
  end

  private
  
  def set_public_profile
    @public_profile = PublicProfile.find(params[:id])
    authorize @public_profile
  end

  def public_profile_params
    params.require(:public_profile).permit(
        :name,
        :professional_registry,
        :description,
        :gender,
        :ethnicity,
        :age,
        :photo,
        :has_online_service,
        :has_home_service,
        :is_pcd,
        :is_validated, 
        provider_specialities_attributes: [
          :id,
          :speciality_ids,
          :_destroy
        ],
        profile_languages_attributes: [
          :id,
          :language_ids,
          :_destroy
        ],
        links_attributes: [
          :id,
          :link_type, 
          :url,
          :_destroy
        ],
    )
  end


end
