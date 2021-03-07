class UsersController < ApplicationController
    before_action :authenticate_user!

    def update
        @user = current_user
    
        if @user.update_attributes(current_user_params)
          flash[:notice] = "Cadastro atualizado com sucesso."
        else
          flash[:alert] = "Algo deu errado. Não foi possível alterar o cadastro."
        end
        redirect_to page_path
    
      end
    
      private
      
      def current_user_params
        params.require(:user).permit(:name, :district, :city, :state, :status)
      end

end
