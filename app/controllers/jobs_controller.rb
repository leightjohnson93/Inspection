class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end


  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = 'Job was successfully created.'
      redirect_to @job
    else
      flash[:danger] = 'There was a problem creating the Job.'
      render 'new'
    end
  end


private
  def job_params
    params.require(:job).permit(:wv, :part, :coat_date, :coat_time, :description, :lot_quantity, :test_quantity, :bin, :mfg_int)
  end
end
