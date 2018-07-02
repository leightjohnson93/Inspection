class JobsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @jobs = Job.all

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
      @quantity_t4 = 20
    else
      @quantity_t1 = (@job.lot_quantity / 1500.to_f).ceil
      @quantity_t2 = (@job.lot_quantity / 1125.to_f).ceil
      @quantity_t3 = (@job.lot_quantity / 750.to_f).ceil
      @quantity_t4 = (@job.lot_quantity / 450.to_f).ceil
    end
  end

  private
    def sortable_columns
      ["wv", "part_id", "description", "lot_quantity", 'test_quantity', 'created_at']
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "wv"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end

    def job_params
      params.require(:job).permit!
    end
end
