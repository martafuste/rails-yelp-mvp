class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def show

  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :stars, :chef_name)
    end
end
