require 'uri'
require 'net/http'

class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
  end

  def create
    if valid_image_link?(params[:image][:link])
      @image = Image.new(image_params)
      @image.save!
      redirect_to images_path
    else
      flash[:notice] = 'Make sure your link goes to an image'
      redirect_to new_path
    end
  end

  private

  def valid_link?(link)
    uri = URI.parse(link)
    uri.is_a?(URI::HTTP)
  rescue URI::InvalidURIError
    false
  end

  def valid_image_link?(link)
    if valid_link?(link)
      url = URI.parse(link)
      Net::HTTP.start(url.host, url.port) do |http|
        return http.head(url.request_uri)['Content-Type'].start_with? 'image'
      end
    else
      false
    end
  end

  def image_params
    params.require(:image).permit(:user_name, :link)
  end
end
