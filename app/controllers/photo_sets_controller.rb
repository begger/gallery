class PhotoSetsController < ApplicationController
  # GET /photo_sets
  # GET /photo_sets.json
  def index
    @photo_sets = PhotoSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photo_sets }
    end
  end

  # GET /photo_sets/1
  # GET /photo_sets/1.json
  def show
    @photo_set = PhotoSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo_set }
    end
  end

  # GET /photo_sets/new
  # GET /photo_sets/new.json
  def new
    @photo_set = PhotoSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo_set }
    end
  end

  # GET /photo_sets/1/edit
  def edit
    @photo_set = PhotoSet.find(params[:id])
  end

  # POST /photo_sets
  # POST /photo_sets.json
  def create
    @photo_set = PhotoSet.new(params[:photo_set])

    respond_to do |format|
      if @photo_set.save
        format.html { redirect_to @photo_set, notice: 'Photo set was successfully created.' }
        format.json { render json: @photo_set, status: :created, location: @photo_set }
      else
        format.html { render action: "new" }
        format.json { render json: @photo_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photo_sets/1
  # PUT /photo_sets/1.json
  def update
    @photo_set = PhotoSet.find(params[:id])

    respond_to do |format|
      if @photo_set.update_attributes(params[:photo_set])
        format.html { redirect_to @photo_set, notice: 'Photo set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_sets/1
  # DELETE /photo_sets/1.json
  def destroy
    @photo_set = PhotoSet.find(params[:id])
    @photo_set.destroy

    respond_to do |format|
      format.html { redirect_to photo_sets_url }
      format.json { head :no_content }
    end
  end
end
