class PatientsController < ApplicationController
before_action :set_patient, only: [:show, :edit, :update, :destroy]
    def index
      @patients = Patient.all
    end

    def show
    end

    def new
      @patient = Patient.new
    end

    def create
      @patient = Patient.create(patient_params)
      if @patient.valid?

        @user = User.create(user_params)
        @user.profile = @patient
        @patient = user.profile

        @patient.save
        redirect_to @patient
      else
        flash[:errors] = @patient.errors.full_messages
        redirect_to new_patient_path
      end
    end

    def edit
      authorized_for(params[:id])
    @patient = Patient.find(params[:id])

    end

    def update
      @patient.update(patient_params)
      if @patient.valid?
        redirect_to @patient
      else
        flash[:errors]= @patient.errors.full_messages
        redirect_to edit_patient_path(@patient)
      end
    end

    def destroy
      @patient.destroy
      redirect_to patients_path
    end

    private
    def set_patient
      @patient = Patient.find(params[:id])
    end
    
    def set_practitioner
      @practitioner = Practitioner.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:name, :age, :address, :medical_history, :clinic_id)
    end

    def practitioner_params
      params.require(:practitioner).permit(:name, :gender, :years_experience, :phone_number_ext, :email, :department_id)
    end

    def user_params
      params.require(:user).permit(:name, :password, :profile_type)
    end
end
