class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end
  def new
    @appointment = Appointment.new
    @practitioner = Practitioner.find(params[:practitioner_id])
    @availabilities = @practitioner.availabilities.select do |availability|
      availability.date.strftime("%Y-%m-%d") == params[:date]
    end

  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      flash[:errors] = @appointment.errors.full_messages
      redirect_to new_appointment_path(:practitioner_id => appointment_params[:practitioner_id], :date => params[:appointment][:date])
    end
  end

  def edit
    @appointment = find
  end

  def update
    @appointment = find
    @appointment.update(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      flash[:errors] = @appointment.errors.full_messages
      render :edit
    end
  end

  def destroy
    @appointment = find
    @appointment.destroy
    redirect_to practitioners_path
  end

  private

  def find
     Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:patient_id, :availability_id, :practitioner_id)
  end
end
