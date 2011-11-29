class PictureController < PictureController
  def index
    @pictures = Picture.all
  end
end