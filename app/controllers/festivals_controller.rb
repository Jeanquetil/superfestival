class FestivalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_festival, only: [ :show ]

  def index
    @festivals = Festival.all
  end

  def show
  end

  private

  def set_festival
    @festival = Festival.find(params[:id])
  end
end
