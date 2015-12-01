module FlickrHelper

  def photo_url_array(user_id)
    photos = flickr.photos.search(:user_id => user_id)
    photo_url_array = []
    photos.each do |photo|
      photo_url_array << "http://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}.jpg"
    end
    photo_url_array
  end

end