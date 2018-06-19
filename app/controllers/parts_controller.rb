class PartsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @part = @job.parts.create(part_params)
    redirect_to job_path(@job)
  end

  private
    def part_params
      params.require(:part).permit(:part, :description, :color, :coating, :shape, :mfg)
    end
end
