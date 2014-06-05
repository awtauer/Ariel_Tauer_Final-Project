class SiblingApplicationsController < ApplicationController
  def index
    @sibling_applications = SiblingApplication.all
  end

  def show
    @sibling_application = SiblingApplication.find(params[:id])
  end

  def new
    @sibling_application = SiblingApplication.new
  end

  def create
    @sibling_application = SiblingApplication.new
    @sibling_application.school_of_attendance = params[:school_of_attendance]
    @sibling_application.ineligible_student = params[:ineligible_student]
    @sibling_application.ineligible_cps_id = params[:ineligible_cps_id]
    @sibling_application.eligible_student = params[:eligible_student]
    @sibling_application.eligible_cps_id = params[:eligible_cps_id]
    @sibling_application.relationship = params[:relationship]
    @sibling_application.home_address = params[:home_address]
    @sibling_application.admin_id = params[:admin_id]

    if @sibling_application.save
      redirect_to "/sibling_applications", :notice => "Sibling application created successfully."
    else
      render 'new'
    end
  end

  def edit
    @sibling_application = SiblingApplication.find(params[:id])
  end

  def update
    @sibling_application = SiblingApplication.find(params[:id])

    @sibling_application.school_of_attendance = params[:school_of_attendance]
    @sibling_application.ineligible_student = params[:ineligible_student]
    @sibling_application.ineligible_cps_id = params[:ineligible_cps_id]
    @sibling_application.eligible_student = params[:eligible_student]
    @sibling_application.eligible_cps_id = params[:eligible_cps_id]
    @sibling_application.relationship = params[:relationship]
    @sibling_application.home_address = params[:home_address]
    @sibling_application.admin_id = params[:admin_id]

    if @sibling_application.save
      redirect_to "/sibling_applications", :notice => "Sibling application updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @sibling_application = SiblingApplication.find(params[:id])

    @sibling_application.destroy

    redirect_to "/sibling_applications", :notice => "Sibling application deleted."
  end
end
