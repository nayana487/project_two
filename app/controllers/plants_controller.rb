class PlantsController < ApplicationController

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plants.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.save
    redirect_to plant_path(@plant)
  end

  def edit
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    redirect_to plant_path(@plant)
  end

  def update

  end

  def destroy
    Plant.find(params[:id]).destroy

    redirect_to "plants"
  end

  def plant_params

  end

end
