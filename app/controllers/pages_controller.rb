class PagesController < ApplicationController
  def home
    if user_signed_in?
      @users = User.paginate(page: params[:page], per_page: 4).order(created_at: :desc)
      render "users/homefeed"
    end
  end
end
