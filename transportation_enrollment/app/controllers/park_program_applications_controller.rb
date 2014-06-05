class ParkProgramApplicationsController < ApplicationController
  def index
    @park_program_applications = ParkProgramApplication.all
  end

  def show
    @park_program_application = ParkProgramApplication.find(params[:id])
  end

  def new
    @park_program_application = ParkProgramApplication.new
  end

  def create
    @park_program_application = ParkProgramApplication.new
    @park_program_application.student_name = params[:student_name]
    @park_program_application.cps_id = params[:cps_id]
    @park_program_application.school_of_attendance = params[:school_of_attendance]
    @park_program_application.park_name = params[:park_name]
    @park_program_application.park_address = params[:park_address]
    @park_program_application.admin_id = params[:admin_id]

    if @park_program_application.save
      redirect_to "/park_program_applications", :notice => "Park program application created successfully."
    else
      render 'new'
    end
  end

  def edit
    @park_program_application = ParkProgramApplication.find(params[:id])
  end

  def update
    @park_program_application = ParkProgramApplication.find(params[:id])

    @park_program_application.student_name = params[:student_name]
    @park_program_application.cps_id = params[:cps_id]
    @park_program_application.school_of_attendance = params[:school_of_attendance]
    @park_program_application.park_name = params[:park_name]
    @park_program_application.park_address = params[:park_address]
    @park_program_application.admin_id = params[:admin_id]

    if @park_program_application.save
      redirect_to "/park_program_applications", :notice => "Park program application updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @park_program_application = ParkProgramApplication.find(params[:id])

    @park_program_application.destroy

    redirect_to "/park_program_applications", :notice => "Park program application deleted."
  end
end
