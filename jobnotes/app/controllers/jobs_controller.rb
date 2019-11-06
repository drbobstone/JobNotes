class JobsController < ApplicationController
  def index
    @jobs = params.key?(:search) ? Job.search(params[:search]) : Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    # render plain: params[:job].inspect
    @job = Job.new(job_params)
    @job.created_at
    if @job.save
      redirect_to @job
    else
      render 'new'
    end
  end

  private

  def job_params
    params.require(:job).permit!
  end
end
