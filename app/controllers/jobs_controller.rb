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
    calculate_test_quantities
    haze_gain
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

  def calculate_test_quantities
    if @job.lot_quantity <= 4500
      @quantity_t1 = 3
      @quantity_t2 = 4
      @quantity_t3 = 6
      @quantity_t4 = 20
    else
      @quantity_t1 = (@job.lot_quantity / 1500.to_f).ceil
      @quantity_t2 = (@job.lot_quantity / 1125.to_f).ceil
      @quantity_t3 = (@job.lot_quantity / 750.to_f).ceil
      @quantity_t4 = (@job.lot_quantity / 450.to_f).ceil
    end
  end

  def haze_gain
    if @job.haze_abraded_1 && @job.haze_initial_1 then @job.haze_gain_1 = (@job.haze_abraded_1 - @job.haze_initial_1).round(2) end
    if @job.haze_abraded_2 && @job.haze_initial_2 then @job.haze_gain_2 = (@job.haze_abraded_2 - @job.haze_initial_2).round(2) end
    if @job.haze_abraded_3 && @job.haze_initial_3 then @job.haze_gain_3 = (@job.haze_abraded_3 - @job.haze_initial_3).round(2) end
    if @job.haze_abraded_4 && @job.haze_initial_4 then @job.haze_gain_4 = (@job.haze_abraded_4 - @job.haze_initial_4).round(2) end
    if @job.haze_abraded_5 && @job.haze_initial_5 then @job.haze_gain_5 = (@job.haze_abraded_5 - @job.haze_initial_5).round(2) end
    if @job.haze_abraded_6 && @job.haze_initial_6 then @job.haze_gain_6 = (@job.haze_abraded_6 - @job.haze_initial_6).round(2) end
  end
  private
    def job_params
      params.require(:job).permit!
    end
end
