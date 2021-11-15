class Admin::PatientsController < ApplicationController

  # GET /admin/patients or /admin/patients.json
  def index
    @patients = Admin::Patient.paginate(page: params[:page], per_page: 5).order(created_at: :desc)
  end

  # GET /admin/patients/1 or /admin/patients/1.json
  def show
    @patients = Admin::Patient.find(params[:id])
  end

  # GET /admin/patients/new
  def new
    @patients = Admin::Patient.new
  end

  # GET /admin/patients/1/edit
  def edit
    @patients = Admin::Patient.find(params[:id])
  end

  # POST /admin/patients or /admin/patients.json
  def create
    @patients = Admin::Patient.new(admin_patient_params)

    respond_to do |format|
      if @patients.save
        format.html { redirect_to @patients, notice: "Patient was successfully created." }
        format.json { render :show, status: :created, location: @patients }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patients.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/patients/1 or /admin/patients/1.json
  def update
    respond_to do |format|
      @patients = Admin::Patient.find(params[:id])
      if @patients.update(admin_patient_params)
        format.html { redirect_to @patients, notice: "Patient was successfully updated." }
        format.json { render :show, status: :ok, location: @patients }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patients.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/patients/1 or /admin/patients/1.json
  def destroy
    @patients.destroy
    respond_to do |format|
      format.html { redirect_to admin_patients_url, notice: "Patient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_patient
      @patients = Admin::Patient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_patient_params
      params.require(:admin_patient).permit(:age, :gender, :firstname, :lastname, :email, :pid, :external_pid, :internal_id, :related_use, :payment_type, :document_type, :date_of_birth, :race, :ethnicity)
    end
end
