class Api::CarsController < ApplicationController
  def index
    @cars = cars.all
    render "index.json.jb"
  end

end
