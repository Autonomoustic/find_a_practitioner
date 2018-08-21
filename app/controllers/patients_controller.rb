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
      @patient = Patient.new(patient_params)
      if @patient.valid?
        @patient.save
        redirect_to @patient
      else
        flash[:errors] = @patient.errors.full_messages
        redirect_to new_patient_path
      end
    end

    def edit
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

    def patient_params
      params.require(:patient).permit(:name, :age, :address, :medical_history, :clinic_id)
    end
    def set_patient
      @patient = Patient.find(params[:id])
    end
end
