class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @departments = Department.find([:id])
  end
end
