class CheatsController < ApplicationController
  
  def index
    @cheats = Cheat.all
  end

  def new
    @cheat = Cheat.new
  end

  def create
    Cheat.create(cheat_params)
  end

  private

  def cheat_params
    params.require(:cheat).permit(:name, :image, :explanation, :category_id, :area_id, :volume_id, :price_id, :city, :house_number, :building)
  end

end
