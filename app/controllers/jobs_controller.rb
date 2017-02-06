class JobsController < ApplicationController
  def create
    @chore = Chore.find(params[:chore_id])
    @job = @chore.jobs.new(job_params)
    if @job.save
      redirect_to chore_path(@job.chore)
    else
      render :new
    end
  end

private
  def job_params
    params.require(:job).permit(:description)
  end
end
