class PhotosController < ApplicationController
  def index
  	@photos = current_user.photos
  end

  def new
  	@photos = Photo.new
  end

  def create
  	@photos = Photo.new(photo_params)
    @photos.user = current_user

  	if @photos.save
  		redirect_to photos_path, notice: 'Foto foi criada com sucesso!'
  	else
  		render 'new'
  	end
  end
  private 

  def photo_params
  	params.require(:photo).permit(:title, :description, :image)
  	
  end
end
