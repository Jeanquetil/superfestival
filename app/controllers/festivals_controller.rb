class FestivalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_festival, only: [ :show ]

  def index
    @festivals = Festival.all
  end

  def show
    find_or_create_timetable_for(@festival)
  end

  def create_event
    @concert = Concert.find(params[:concert_id])
    @timetable_event = TimetableEvent.new(concert: @concert, timetable_id: @timetable.id)
  end

  private

  def set_festival
    @festival = Festival.includes(:artists).find(params[:id])
  end

  def find_or_create_timetable_for(festival)
    timetables = Timetable.where(festival_id: festival.id)
    participation = Participation.where(session_id: session[:session_id]).where(timetable: timetables).first
    if !participation.nil?
      @timetable = Timetable.find(participation.timetable_id)
    else
      @timetable = Timetable.create!(festival: festival)
      Participation.create!(session_id: session[:session_id], timetable_id: @timetable.id)
    end
  end
end
