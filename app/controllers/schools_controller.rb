class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new

  end

  def create
    school = School.create(params) # note strong params are for an Active Record model.

    redirect_to school_path(school.id)
  end
end
