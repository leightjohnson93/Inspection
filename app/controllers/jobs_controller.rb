class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end


  def new
  end

  def create
    @job = Job.new(job_params)
    @job.save
    redirect_to @job
  end


private
  def job_params
    params.require(:job).permit(:wv, :part, :coat_date, :coat_time, :description, :lot_quantity, :test_quantity, :bin, :mfg_int)
  end
end
