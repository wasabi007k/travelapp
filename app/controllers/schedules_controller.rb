class SchedulesController < ApplicationController
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

  def index
    @schedules = Schedule.all.order(id: "DESC")
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
    if @schedule.user != current_user
        redirect_to schedules_path, alert: "不正なアクセスです。"
    end
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to schedule_path(@schedule), notice: "スケジュールを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to user_path(schedule.user), notice: "スケジュールを削除しました。"
  end

  private
  def schedule_params
    params.require(:schedule).permit(:title, :start_date, :end_date, :num_p, :image)
  end
end
