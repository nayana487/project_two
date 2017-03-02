class PlantsController < ApplicationController

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    #@season = Season.find(params[:season_id])
    @plant = Plant.new
    @season_name = Season.all.map { |season| season.name }
  end

  def edit
      @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    redirect_to plant_path(@plant)
  end

  def plant_params
    params.require(:plant).permit(:name, :season_id, :height, :width, :hardiness, :minsoiltemp, :depth, :separation, :watering, :fertilizing, :maturity, :production, :harvest, :img_url)
  end

  def create
    # @season = Season.find(params[:season_id])
    @plant = Plant.new(plant_params)
#    @plant.season = Season.find_by(name: params[:plant][:season])
    @plant.save
    redirect_to plants_path
  end

  def destroy
Plant.find(params[:id]).destroy
    redirect_to "/plants"
  end

  def plant_params
    params.require(:plant).permit(:name, :season_id, :height, :width, :hardiness, :minsoiltemp, :depth, :separation, :watering, :fertilizing, :maturity, :production, :harvest, :img_url)
  end

end
