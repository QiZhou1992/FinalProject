class PrivateAlbumsController < ApplicationController
  before_action :set_private_album, only: [:show, :edit, :update, :destroy]

  # GET /private_albums
  # GET /private_albums.json
  def index
    @private_albums = PrivateAlbum.all
  end

  # GET /private_albums/1
  # GET /private_albums/1.json
  def show
  end

  # GET /private_albums/new
  def new
    @private_album = PrivateAlbum.new
  end

  # GET /private_albums/1/edit
  def edit
  end

  # POST /private_albums
  # POST /private_albums.json
  def create
    @private_album = PrivateAlbum.new(private_album_params)

    respond_to do |format|
      if @private_album.save
        format.html { redirect_to @private_album, notice: 'Private album was successfully created.' }
        format.json { render action: 'show', status: :created, location: @private_album }
      else
        format.html { render action: 'new' }
        format.json { render json: @private_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_albums/1
  # PATCH/PUT /private_albums/1.json
  def update
    respond_to do |format|
      if @private_album.update(private_album_params)
        format.html { redirect_to @private_album, notice: 'Private album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @private_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_albums/1
  # DELETE /private_albums/1.json
  def destroy
    @private_album.destroy
    respond_to do |format|
      format.html { redirect_to private_albums_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_album
      @private_album = PrivateAlbum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_album_params
      params.require(:private_album).permit(:Name, :UserID)
    end
end
