class Admin::PatientsController < ApplicationController

  def index
    @patients = Admin::Patient.paginate(page: params[:page], per_page: 5).order(created_at: :desc)
  end

  def show
    @patients = Admin::Patient.find(params[:id])
  end

  def new
    @users = User.all
    @patients = Admin::Patient.new
  end

  def edit
    @patients = Admin::Patient.find(params[:id])
  end

  def create
    @patients = Admin::Patient.new(admin_patient_params)
    if @patients.save
      flash[:success] = "Successfully Created a patient."
      redirect_to admin_patients_path
    else
      render "new"
    end
  end

  def update
    @patients = Admin::Patient.find(params[:id])
    if @patients.update(admin_patient_params)
      flash[:success] = "Successfully updated a patient."
      redirect_to admin_patients_path
    else
      render "edit"
    end
  end

  def destroy
    @patients = Admin::Patient.find(params[:id])
    @patients.destroy
    flash[:success] = "Successfully destroyed a patient."
    redirect_to admin_patients_path
  end

  private
    def set_admin_patient
      @patients = Admin::Patient.find(params[:id])
    end

    def admin_patient_params
      params.require(:admin_patient).permit(:age, :gender, :firstname, :lastname, :email, :pid, :external_pid, :internal_id, :related_use, :payment_type, :document_type, :date_of_birth, :race,
         :ethnicity, :street, :street2, :city, :state, :zip, :country, :phone, :mobile, :county)
    end
end
