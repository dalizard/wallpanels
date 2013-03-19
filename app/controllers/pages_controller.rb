class PagesController < ApplicationController
  def index
    @slideshow_images = Dir.glob("app/assets/images/slideshow/*.jpg")
  end

  def designs; end
end
