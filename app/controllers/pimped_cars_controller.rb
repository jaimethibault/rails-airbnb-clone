class PimpedCarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_pimped_cars, only: [:show]

  def index

  end

  def show
  end

  private

  def set_pimped_cars
    @pimpedcar = PimpedCar.find(params[:id])
  end
end