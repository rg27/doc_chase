class Admin::UsersController < ApplicationController
    def index
        @users = User.paginate(page: params[:page], per_page: 5).order(created_at: :desc)
    end
end
