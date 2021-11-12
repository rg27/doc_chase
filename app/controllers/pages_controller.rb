class PagesController < ApplicationController
  def home
    if user_signed_in?
     
      render "users/homefeed"
    end
  end
end
