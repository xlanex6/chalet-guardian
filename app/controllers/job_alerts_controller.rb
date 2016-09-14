class  JobAlertsController < ApplicationController
  before_action :set_job_alert, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @job_alerts = policy_scope(JobAlert)
  end

  def show
  end


  def new
    @job_alert = JobAlert.new
    authorize @job_alert
  end

  def create
    @job_alert = current_user.job_alerts.build(job_alert_params)
    authorize @job_alert
    if @job_alert.save
      redirect_to @job_alert, notice: "Your job has been successfully posted !"
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
    authorize @job_alert
  end

  def job_alert_params
    params.require(:job_alert).permit(:job_categorie_id,:start_date,:end_date,:address,:ski_resort_id,:photo,:description)
  end
end
