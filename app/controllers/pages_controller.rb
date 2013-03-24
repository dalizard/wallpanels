class PagesController < ApplicationController
  def index
    @slideshow_images = Dir.glob("app/assets/images/slideshow/*.jpg")
  end

  def all_designs
    @thumbnails = Dir.glob("app/assets/images/products/*-1_tn.jpg")
  end

  def design
    @design = params[:design]
    @thumbnails = Dir.glob("app/assets/images/products/#{@design}*_tn.jpg")
  end
end
