class PlacesController < ApplicationController
  
  def index
    @placecs = Placec.all
  end
end
