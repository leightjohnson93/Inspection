class JobsController < ApplicationController
  def index
  end

  def new
  end

  def create
    render plain: params[:job].inspect
  end

end
