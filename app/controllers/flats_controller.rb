class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flat_params)
    redirect_to flats_path
  end

  def flat_params
    params.require(:flat).permit(:name, :adrress, :description, :price_per_night, :number_of_guests)
end
end
