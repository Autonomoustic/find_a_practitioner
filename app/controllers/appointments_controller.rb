class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
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
      render :edit
    end
  end

  def destory
    @appointment = find
    @appointment.destroy
    redirect_to practitioners_path
  end

  private

  def find
    Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :time, :practitioner)
  end
end
