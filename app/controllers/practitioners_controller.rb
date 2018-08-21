class PractitionersController < ApplicationController
  def index
    @practitioners = Practitioner.all
  end

  def show
    @practitioner = Practitioner.find(params[:id])
  end



end
