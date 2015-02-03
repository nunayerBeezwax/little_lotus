class LotusController < ApplicationController

  def index
  end

  def phil
  end

  def info
  end

  def faq
  end

  def contact 
    @map_url = "https://www.google.com/maps/embed/v1/place?key=" + 
                MAP_CONFIG['api_key'] + "&q=boiseand42ndPortlandOR"
  end
end