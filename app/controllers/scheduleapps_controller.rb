class ScheduleappsController < ApplicationController
  def index
    @schedules = Scheduleapp.all
  end
  
  def new
    @schedule = Scheduleapp.new
  end

  def create
    @schedule = Scheduleapp.new(params.require(:scheduleapp).permit(:title, :start_date, :end_date, :one_day, :memo))
    if @schedule.save
      flash[:notice] = "新規予定を追加"
      redirect_to :scheduleapps
    else
      render "new"
    end
  end

  def show
    @schedule = Scheduleapp.find(params[:id])
  end

  def edit
    @schedule = Scheduleapp.find(params[:id])
  end

  def update
    @schedule = Scheduleapp.find(params[:id])
    if @schedule.update(params.require(:scheduleapp).permit(:title, :start_date, :end_date, :one_day, :memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :scheduleapps
    else
      render "edit"
    end
  end

  def destroy
    @schedule = Scheduleapp.find(params[:id])
    @schedule.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :scheduleapps
  end
end
