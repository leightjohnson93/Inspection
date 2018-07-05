class PartsController < ApplicationController
  def index
    @parts = smart_listing_create(:parts, Part.all, partial: "parts/list", default_sort: {part: "desc"})
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
    def part_params
      params.require(:part).permit(:part, :description, :color, :coating, :shape, :mfg)
    end
end
