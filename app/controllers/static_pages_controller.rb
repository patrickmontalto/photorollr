class StaticPagesController < ApplicationController
  include FlickrHelper

  def index
    @user_id ||= params[:id]
    @photos_url = photo_url_array(@user_id)
  end
end
