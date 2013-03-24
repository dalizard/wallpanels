class PagesController < ApplicationController
  def index
    @slideshow_images = Dir.glob("app/assets/images/slideshow/*.jpg")
  end

  def all_designs
    @thumbnails = Dir.glob("app/assets/images/products/*_tn.jpg")
  end

  def design
    @design = params[:design]
  end
end
