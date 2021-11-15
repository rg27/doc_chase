class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin, only: [:create, :new]

  def index
    @users = User.paginate(page: params[:page], per_page: 4).order(created_at: :desc)
  end

  def show
    @users = User.find(params[:id])
  end
  
  def new
    @users = User.new
  end

  def edit
    @users = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Successfully Created a account."
      redirect_to admin_users_path
    else
      flash[:error] = "This form contains errors!"
      render 'new'
    end
  end

  def update
    @users = User.find(params[:id])
    if @users.update(user_params)
      flash[:success] = "Successfully Updated Profile."
      redirect_to admin_users_path
    else
      render 'edit'
    end
  end
  

  private
  # This should probably be abstracted to ApplicationController
  # as shown by diego.greyrobot
  def authorize_admin
    return unless !current_user.is_admin?
    redirect_to authenticated_root_path, alert: 'Admins only!'
  end

    private
	def user_params
		params.require(:user).permit( :email, :password, :firstname, :lastname, :password_confirmation)
	end
end
