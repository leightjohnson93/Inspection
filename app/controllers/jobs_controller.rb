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

  def edit
    @job = Job.find(params[:id])
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
  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:success] = 'Job was successfully updated.'
      redirect_to @job
    else
      flash[:danger] = 'There was a problem updating the Job.'
      render 'edit'
    end
  end
  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end
  private
    def job_params
      params.require(:job).permit(:wv, :line, :part, :coat_date, :coat_time, :description, :lot_quantity, :test_quantity, :bin, :mfg_int)
    end
end
