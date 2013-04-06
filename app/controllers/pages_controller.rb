require 'will_paginate/array'

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

  def eco_products
  end

  def contacts
  end

  def projects
    @thumbnails = Dir.glob("app/assets/images/projects/*_tn.jpg").paginate(page: params[:page], per_page: 20)
  end
end
