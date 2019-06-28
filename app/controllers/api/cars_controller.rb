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

  def show
    @car = Car.find_by(id: params[:id])
    render "show.jason.jb"
  end

  def update
    @car = Car.find_by(id: params[:id])
    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @car.color = params[:color] || @car.color
    @car.year = params[:year] || @car.year
    @car.save
    render "show.json.jb"
  end

  def destroy
    car = Car.find_by(id: params[:id])
    car.destroy
    render json: {message: "Car succesfully removed"}
  end
end
