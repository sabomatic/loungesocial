class HotspotsController < ApplicationController

  def welcome
    @hotspot = Hotspot.new
  end

  def find
    @hotspot = Hotspot.find_or_initialize_by(train: hotspot_params[:train])
    if @hotspot.new_record?
      redirect_to new_hotspot_path
    else
      redirect_to @hotspot
    end
  end

  def new
    @hotspot = Hotspot.new
  end

  def show
    @hotspot = Hotspot.find(params[:id])
  end

  def create
    @hotspot = Hotspot.new(hotspot_params)
    if @hotspot.save
      redirect_to @hotspot
    else
      render 'new'
    end
  end

  private
  def hotspot_params
    params.require(:hotspot).permit(:train, :car, :seat, :name)
  end
end
