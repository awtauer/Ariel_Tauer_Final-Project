class SafetyHazardApplicationsController < ApplicationController
  def index
    @safety_hazard_applications = SafetyHazardApplication.all
  end

  def show
    @safety_hazard_application = SafetyHazardApplication.find(params[:id])
  end

  def new
    @safety_hazard_application = SafetyHazardApplication.new
  end

  def create
    @safety_hazard_application = SafetyHazardApplication.new
    @safety_hazard_application.student_name = params[:student_name]
    @safety_hazard_application.cps_id = params[:cps_id]
    @safety_hazard_application.home_address = params[:home_address]
    @safety_hazard_application.school_of_attendance = params[:school_of_attendance]
    @safety_hazard_application.school_address = params[:school_address]
    @safety_hazard_application.hazard_location = params[:hazard_location]
    @safety_hazard_application.hazard_type = params[:hazard_type]
    @safety_hazard_application.admin_id = params[:admin_id]

    if @safety_hazard_application.save
      redirect_to "/safety_hazard_applications", :notice => "Safety hazard application created successfully."
    else
      render 'new'
    end
  end

  def edit
    @safety_hazard_application = SafetyHazardApplication.find(params[:id])
  end

  def update
    @safety_hazard_application = SafetyHazardApplication.find(params[:id])

    @safety_hazard_application.student_name = params[:student_name]
    @safety_hazard_application.cps_id = params[:cps_id]
    @safety_hazard_application.home_address = params[:home_address]
    @safety_hazard_application.school_of_attendance = params[:school_of_attendance]
    @safety_hazard_application.school_address = params[:school_address]
    @safety_hazard_application.hazard_location = params[:hazard_location]
    @safety_hazard_application.hazard_type = params[:hazard_type]
    @safety_hazard_application.admin_id = params[:admin_id]

    if @safety_hazard_application.save
      redirect_to "/safety_hazard_applications", :notice => "Safety hazard application updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @safety_hazard_application = SafetyHazardApplication.find(params[:id])

    @safety_hazard_application.destroy

    redirect_to "/safety_hazard_applications", :notice => "Safety hazard application deleted."
  end
end
