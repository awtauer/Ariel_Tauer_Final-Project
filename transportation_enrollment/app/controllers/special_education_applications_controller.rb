class SpecialEducationApplicationsController < ApplicationController

  def index
    @special_education_applications = SpecialEducationApplication.all
  end

  def show
    @special_education_application = SpecialEducationApplication.find(params[:id])
  end

  def new
    @special_education_application = SpecialEducationApplication.new
  end

  def create
    @special_education_application = SpecialEducationApplication.new
    @special_education_application.student_name = params[:student_name]
    @special_education_application.cps_id = params[:cps_id]
    @special_education_application.school_of_attendance = params[:school_of_attendance]
    @special_education_application.daytime = params[:daytime]
    @special_education_application.user_id = params[:user_id]

    if @special_education_application.save
      redirect_to "/special_education_applications", :notice => "Special education application created successfully."
    else
      render 'new'
    end
  end

  def edit
    @special_education_application = SpecialEducationApplication.find(params[:id])
  end

  def update
    @special_education_application = SpecialEducationApplication.find(params[:id])

    @special_education_application.student_name = params[:student_name]
    @special_education_application.cps_id = params[:cps_id]
    @special_education_application.school_of_attendance = params[:school_of_attendance]
    @special_education_application.daytime = params[:daytime]
    @special_education_application.user_id = current_user.id

    if @special_education_application.save
      redirect_to "/special_education_applications", :notice => "Special education application updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @special_education_application = SpecialEducationApplication.find(params[:id])

    @special_education_application.destroy

    redirect_to "/special_education_applications", :notice => "Special education application deleted."
  end
end
