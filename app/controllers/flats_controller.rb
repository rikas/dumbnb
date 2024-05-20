require "open-uri"

class FlatsController < ApplicationController
  # GET /flats
  def list
    read_list_of_flats
  end

  # GET /flats/:id
  # GET /flats/28
  def show
    id = params[:id]

    read_list_of_flats

    @flat = @flats.find { |flat| flat['id'] == id.to_i }
  end

  def read_list_of_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end
end
