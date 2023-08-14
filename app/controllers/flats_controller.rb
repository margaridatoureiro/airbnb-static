require "open-uri"

class FlatsController < ApplicationController
  before_action :fetch_flats

  def index 
  end

  def show 
    flat_id = params[:id].to_i

    @flat = @flats.find { |flat| flat["id"] == flat_id }
  end

  private

  def fetch_flats 
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end
end
