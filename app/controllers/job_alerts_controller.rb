class  JobAlertsController < ApplicationController
  before_action :set_job_alert, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @job_alerts = JobAlert.all
  end

  def show
  end


  def new
    @job_alert = JobAlert.new
    @job_categories = JobCategorie.all
    @ski_resorts = SkiResort.all
  end

  def create
    @job_alert = JobAlert.new(params[:job_alert_params])
    @job_alert.user = current_user
    if @job_alert.save
      redirect_to @job_alert, notice: "your JobAlert have been add SUCCEFULLY"
    else
      render :new
    end

  end

  def update
    @job_alert = JobAlert.new(params[:job_alert])
  end


  private

  def set_job_alert
    @job_alert = JobAlert.find(params[:id])
  end

  def job_alert_params
    params.require(:job_alert).permit(:job_categorie,:start_date,:end_date,:address,:ski_resort,:photo,:description)
  end
end
