class HotspotsController < ApplicationController


  def new
    @hotspot = Hotspot.new
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

  def edit
    @hotspot = Hotspot.find(params[:id])
  end

  def show
    @hotspot = Hotspot.find(params[:id])
  end




end
