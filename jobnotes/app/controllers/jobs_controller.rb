class JobsController < ApplicationController
    def index

    end

    def show
        @job = Job.find(params[:id])
    end

    def new

    end

    def create
        #render plain: params[:job].inspect
        @job = Job.new(job_params)
        @job.created_at
        @job.save
        redirect_to @job
    end


    private
    
    def job_params
        params.require(:job).permit!
    end

end
