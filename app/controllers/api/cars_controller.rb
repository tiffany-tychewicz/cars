class Api::CarsController < ApplicationController
  
  def index
    @cars = Car.all
    render "index.json.jb"
  end

  def create
    @car = Car.new(
      make: params[:make],
      model: params[:model],
      color: params[:color],
      year: params[:year]
      )
    @car.save
    render "show.json.jb"
  end



end
