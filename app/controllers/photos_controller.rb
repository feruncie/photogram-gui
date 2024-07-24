class PhotosController < ApplicationController
  def index 

    matching_photos = Photo.all

    @list_of_photos = matching_photos.order({ :created_at => :desc})

    render ({ :template => "photos_templates/index" })
  end 

  def show 
    
    url_id = params.fetch("path_id")
    
    matching_photos = Photo.where({ :id => url_id})

    @the_photo = matching_photos.at(0)

    render ({ :template => "photos_templates/show" })
  end 

  def trash
    the_id = params.fetch("trash_id")

    matching_photos = Photo.where({ :id => the_id })

    the_photo = matching_photos.at(0)

    the_photo.destroy 

    redirect_to("/photos")
    #render({ :template => "photos_templates/trash" })
  end 

end 
