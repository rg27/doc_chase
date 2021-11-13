class Admin::PatientsController < ApplicationController
  

  # GET /admin/patients or /admin/patients.json
  def index
    @patients = Patient.paginate(page: params[:page], per_page: 4).order(created_at: :desc)
  end

  # GET /admin/patients/1 or /admin/patients/1.json
  def show
  end

  # GET /admin/patients/new
  def new
    @admin_patient = Admin::Patient.new
  end

  # GET /admin/patients/1/edit
  def edit
  end

  # POST /admin/patients or /admin/patients.json
  def create
    @admin_patient = Admin::Patient.new(admin_patient_params)

    respond_to do |format|
      if @admin_patient.save
        format.html { redirect_to @admin_patient, notice: "Patient was successfully created." }
        format.json { render :show, status: :created, location: @admin_patient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/patients/1 or /admin/patients/1.json
  def update
    respond_to do |format|
      if @admin_patient.update(admin_patient_params)
        format.html { redirect_to @admin_patient, notice: "Patient was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_patient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/patients/1 or /admin/patients/1.json
  def destroy
    @admin_patient.destroy
    respond_to do |format|
      format.html { redirect_to admin_patients_url, notice: "Patient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_patient
      @admin_patient = Admin::Patient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_patient_params
      params.require(:admin_patient).permit(:pid, :externalPid, :user_id, :relatedUuse, :paymentType, :documentType, :dateOfBirth, :age, :gender, :race, :ethnicity, :street, :street2, :city, :state, :zip, :country, :phone, :mobile, :county, :email)
    end
end
