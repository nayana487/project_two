class SeasonsController < ApplicationController

  def index
    @seasons = Season.all
  end

  def show
    @seasons = Seasons.find(params[:id])
  end

end

private
def season_params
  params.require(:season).permit(:name, :img_url)
end
