class PublicAlbumImagesController < ApplicationController
  before_action :set_public_album_image, only: [:show, :edit, :update, :destroy]

  # GET /public_album_images
  # GET /public_album_images.json
  def index
    @public_album_images = PublicAlbumImage.all
  end

  # GET /public_album_images/1
  # GET /public_album_images/1.json
  def show
  end

  # GET /public_album_images/new
  def new
    @public_album_image = PublicAlbumImage.new
  end

  # GET /public_album_images/1/edit
  def edit
  end

  # POST /public_album_images
  # POST /public_album_images.json
  def create
    @public_album_image = PublicAlbumImage.new(public_album_image_params)

    respond_to do |format|
      if @public_album_image.save
        format.html { redirect_to @public_album_image, notice: 'Public album image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @public_album_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @public_album_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_album_images/1
  # PATCH/PUT /public_album_images/1.json
  def update
    respond_to do |format|
      if @public_album_image.update(public_album_image_params)
        format.html { redirect_to @public_album_image, notice: 'Public album image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @public_album_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_album_images/1
  # DELETE /public_album_images/1.json
  def destroy
    @public_album_image.destroy
    respond_to do |format|
      format.html { redirect_to public_album_images_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_album_image
      @public_album_image = PublicAlbumImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_album_image_params
      params.require(:public_album_image).permit(:ImageID, :AlbumID)
    end
end
