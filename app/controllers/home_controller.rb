class HomeController < ApplicationController
  def index
      @plants = Plant.all
      @garden_types = GardenType.all
  end
end
