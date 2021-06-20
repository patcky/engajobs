class LanguagesController < ApplicationController
    before_action :set_language, only: [ :show, :edit, :update, :destroy]
    def index
        @languages = policy_scope(Language)
    end

    def show; end

    def new
        @language = Language.new
        authorize @language
    end

    def create
        @language = Language.new(language_params)
        authorize @language
        if @language.save
            redirect_to language_path(@language)
        else
            render :new
        end
    end

    def edit; end

    def update
        @language.update(language_params)
        redirect_to language_path(@language)
    end

    def destroy
        @language.destroy
        redirect_to languages_path
    end

    private

    def set_language
        @language = Language.find(params[:id])
        authorize @language
    end

    def language_params
        params.require(:language).permit(:name)
    end
end
