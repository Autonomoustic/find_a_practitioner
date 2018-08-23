class PractitionersController < ApplicationController
  def index
    @practitioners = Practitioner.all
  end

  def show
    @practitioner = Practitioner.find(params[:id])
  end

  def new
    @practitioner = Practitioner.new
  end


  def create
    @practitioner = Practitioner.create(practitioner_params)
    if @practitioner.valid?
      redirect_to @practitioner
    else
      flash[:errors] = @practitioner.errors.full_messages
      redirect_to new_practitioner_path
    end
  end

  private

  def practitioner_params
    params.require(:practitioner).permit(:name, :gender, :years_experience, :phone_number_ext, :email, :department_id, :user_id)
  end


end
