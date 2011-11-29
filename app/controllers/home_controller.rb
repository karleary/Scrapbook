class HomeController < ApplicationController
  def index
    @pictures = Picture.all
  end

end
