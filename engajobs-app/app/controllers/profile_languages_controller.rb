class ProfileLanguagesController < ApplicationController
    before_action :set_profile_language, only: [:show, :edit, :update, :destroy]
    before_action :set_public_profile, only: [:new, :create ]
  
  def index
      @profile_languages = policy_scope(ProfileLanguage)
  end

  def show 
  end

  def new
      @profile_language = ProfileLanguege.new
      @profile_language.public_profile = @public_profile
      authorize @profile_language
  end

  def create
      @profile_language = ProfileLanguege.new(profile_language_params)
      @profile_language.public_profile = @public_profile
      authorize @profile_language
      if @profile_language.save
          redirect_to profile_language_path(@profile_language)
      else
          render :new
      end
  end

  def edit; end

  def update
      @profile_language.update(profile_language_params)
      redirect_to profile_language_path(@profile_language)
  end

  def destroy
      @profile_language.destroy
      redirect_to public_profile_languages
  end

  private

  def set_language
      @profile_language = ProfileLanguege.find(params[:id])
      authorize @profile_language
  end

  def set_public_profile
    @public_profile = PublicProfile.find(params[:public_profile_id])
  end

  def profile_language_params
      params.require(:profile_language).permit(:language)
  end
end
