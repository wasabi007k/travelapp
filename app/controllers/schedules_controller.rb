class SchedulesController < ApplicationController
  def index
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = current_user.schedules.build(schedule_params)
    if @schedule.save
      redirect_to schedule_path(@schedule), notice: "スケジュールを保存しました。"
    else
      render :new
    end
  end

  def edit
  end

  private
  def schedule_params
    params.require(:schedule).permit(:title, :start_date, :end_date, :num_p, :image)
  end
end
