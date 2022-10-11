class Public::SchedulesController < ApplicationController
  before_action :authenticate_user!

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.user_id = current_user.id
    @schedule.save
    redirect_to schedule_path(@schedule.id)
  end

  def show
    @schedule = Schedule.find(params[:id])
    @diary = Diary.new
    @list = List.new
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    schedule = Schedule.find(params[:id])
    schedule.update(schedule_params)
    redirect_to schedule_path(schedule.id)
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to schedules_path
  end

  def index
    @schedules = Schedule.all
  end


  private

  def schedule_params
    params.require(:schedule).permit(:user_id, :plan, :plan_detetime, :allday_flg, :memo, :place, :color_id, :is_active)
  end


end
