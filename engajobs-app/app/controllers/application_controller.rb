class ApplicationController < ActionController::Base
    # [...]
    before_action :authenticate_user!, except: [:index, :show]
    include Pundit

    # Pundit: white-list approach.
    after_action :verify_authorized, except: :index, unless: :skip_pundit?
    after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?


    # Uncomment when you *really understand* Pundit!
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    def user_not_authorized
      flash[:alert] = "Você não tem autorização para realizar esta ação."
      redirect_to(root_path)
    end

    private

    def skip_pundit?
        devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
    end
end
