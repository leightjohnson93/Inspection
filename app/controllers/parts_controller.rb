class PartsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @parts = Part.order("#{sort_column} #{sort_direction}")
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      flash[:success] = 'Part was successfully created.'
      redirect_to parts_path
    else
      flash[:danger] = 'There was a problem creating the part.'
      render 'new'
    end
  end

  def edit
    @part = Part.find(params[:id])
  end

  def update
    @part = Part.find(params[:id])
    if @part.update(part_params)
      flash[:success] = 'Part successfully updated.'
      redirect_to parts_path
    else
      flash[:danger] = 'There was a problem updating the part.'
      render 'edit'
    end
  end

  def destroy
    @part = Part.find(params[:id])
    @part.destroy
    redirect_to parts_path
  end

  private
    def sortable_columns
      ['part', 'description', 'shape', 'color', 'coating', 'mfg']
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : 'part'
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    def part_params
      params.require(:part).permit(:part, :description, :color, :coating, :shape, :mfg)
    end
end
