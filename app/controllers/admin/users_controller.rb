class Admin::UsersController < ApplicationController
    def index
      @users = User.paginate(page: params[:page], per_page: 5).order(created_at: :desc)
    end

    def show
      @users = User.find(params[:id])
    end
    
    def destroy
      @users = User.find(params[:id])
      @users.destroy
      respond_to do |format|
        format.html { redirect_to admin_users_path, notice: "User was successfully destroyed." }
        format.json { head :no_content }
      end
    end
end
