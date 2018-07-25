class JobsController < ApplicationController
  def index
    @jobs = smart_listing_create(:jobs, Job.all.joins(:part), partial: "jobs/list", default_sort: {lot_complete: "asc"})
    respond_to do |format|
      format.html
      format.xlsx
    end
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
    calculate_imbalance
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
      if params[:commit] == "Testing Complete"
        flash[:success] = 'Test data successfully saved.'
        redirect_to @job
      elsif params[:commit] == "Save Progress"
        flash[:success] = 'Test data successfully saved.'
        redirect_back fallback_location: root_path
      else
        flash[:success] = "Job successfully updated."
        redirect_to @job
      end
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
      @quantity_t4 = 10
    else
      @quantity_t1 = (@job.lot_quantity / 1500.to_f).ceil
      @quantity_t2 = (@job.lot_quantity / 1125.to_f).ceil
      @quantity_t3 = (@job.lot_quantity / 750.to_f).ceil
      @quantity_t4 = (@job.lot_quantity / 450.to_f).ceil
    end
  end

  def calculate_imbalance
    @job.horizontal_imbalance_1 = (@job.horizontal_left_1 - @job.horizontal_right_1).round(3) if !(@job.horizontal_left_1.nil? && @job.horizontal_right_1.nil?)
    @job.horizontal_imbalance_2 = (@job.horizontal_left_2 - @job.horizontal_right_2).round(3) if !(@job.horizontal_left_2.nil? && @job.horizontal_right_2.nil?)
    @job.horizontal_imbalance_3 = (@job.horizontal_left_3 - @job.horizontal_right_3).round(3) if !(@job.horizontal_left_3.nil? && @job.horizontal_right_3.nil?)
    @job.horizontal_imbalance_4 = (@job.horizontal_left_4 - @job.horizontal_right_4).round(3) if !(@job.horizontal_left_4.nil? && @job.horizontal_right_4.nil?)
    @job.horizontal_imbalance_5 = (@job.horizontal_left_5 - @job.horizontal_right_5).round(3) if !(@job.horizontal_left_5.nil? && @job.horizontal_right_5.nil?)
    @job.horizontal_imbalance_6 = (@job.horizontal_left_6 - @job.horizontal_right_6).round(3) if !(@job.horizontal_left_6.nil? && @job.horizontal_right_6.nil?)

    @job.vertical_imbalance_1 = (@job.vertical_left_1 - @job.vertical_right_1).round(3).abs if !(@job.vertical_left_1.nil? && @job.vertical_right_1.nil?)
    @job.vertical_imbalance_2 = (@job.vertical_left_2 - @job.vertical_right_2).round(3).abs if !(@job.vertical_left_2.nil? && @job.vertical_right_2.nil?)
    @job.vertical_imbalance_3 = (@job.vertical_left_3 - @job.vertical_right_3).round(3).abs if !(@job.vertical_left_3.nil? && @job.vertical_right_3.nil?)
    @job.vertical_imbalance_4 = (@job.vertical_left_4 - @job.vertical_right_4).round(3).abs if !(@job.vertical_left_4.nil? && @job.vertical_right_4.nil?)
    @job.vertical_imbalance_5 = (@job.vertical_left_5 - @job.vertical_right_5).round(3).abs if !(@job.vertical_left_5.nil? && @job.vertical_right_5.nil?)
    @job.vertical_imbalance_6 = (@job.vertical_left_6 - @job.vertical_right_6).round(3).abs if !(@job.vertical_left_6.nil? && @job.vertical_right_6.nil?)
  end

  private
    def job_params
      params.require(:job).permit!
    end
end
