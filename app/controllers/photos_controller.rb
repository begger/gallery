class PhotosController < ApplicationController
  # NOTE: Nested in PhotoSet resource

  # GET /photo_set/1/photos
  # GET /photo_set/1/photos.json
  def index
    @photo_set = PhotoSet.find(params[:photo_set_id])
    redirect_to @photo_set
  end

  # GET /photo_set/1/photos/1
  # GET /photo_set/1/photos/1.json
  def show
    @photo_set = PhotoSet.find(params[:photo_set_id])
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photo_set/1/photos/new
  # GET /photo_set/1/photos/new.json
  def new
    @photo_set = PhotoSet.find(params[:photo_set_id])
    @photo = Photo.new(:photo_set_id => @photo_set.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photo_set/1/photos/1/edit
  def edit
    @photo_set = PhotoSet.find(params[:photo_set_id])
    @photo = Photo.find(params[:id])
  end

  # POST /photo_set/1/photos
  # POST /photo_set/1/photos.json
  def create
    @photo_set = PhotoSet.find(params[:photo_set_id])
    @photo = Photo.new(params[:photo].merge(:photo_set_id => @photo_set.id))

    respond_to do |format|
      if @photo.save
        format.html { redirect_to [@photo_set, @photo], notice: 'Photo was successfully created.' }
        format.json { render json: [@photo_set, @photo], status: :created, location: [@photo_set, @photo] }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photo_set/1/photos/1
  # PUT /photo_set/1/photos/1.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to [@photo_set, @photo], notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_set/1/photos/1
  # DELETE /photo_set/1/photos/1.json
  def destroy
    @photo_set = PhotoSet.find(params[:photo_set_id])
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photo_set_photos_url(@photo_set) }
      format.json { head :no_content }
    end
  end
end
