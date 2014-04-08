class PublicAlbumsController < ApplicationController
  before_action :set_public_album, only: [:show, :edit, :update, :destroy]

  # GET /public_albums
  # GET /public_albums.json
  def index
    @public_albums = PublicAlbum.all
  end

  # GET /public_albums/1
  # GET /public_albums/1.json
  def show
  end

  # GET /public_albums/new
  def new
    @public_album = PublicAlbum.new
  end

  # GET /public_albums/1/edit
  def edit
  end

  # POST /public_albums
  # POST /public_albums.json
  def create
    @public_album = PublicAlbum.new(public_album_params)

    respond_to do |format|
      if @public_album.save
        format.html { redirect_to @public_album, notice: 'Public album was successfully created.' }
        format.json { render action: 'show', status: :created, location: @public_album }
      else
        format.html { render action: 'new' }
        format.json { render json: @public_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_albums/1
  # PATCH/PUT /public_albums/1.json
  def update
    respond_to do |format|
      if @public_album.update(public_album_params)
        format.html { redirect_to @public_album, notice: 'Public album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @public_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_albums/1
  # DELETE /public_albums/1.json
  def destroy
    @public_album.destroy
    respond_to do |format|
      format.html { redirect_to public_albums_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_album
      @public_album = PublicAlbum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_album_params
      params.require(:public_album).permit(:Name, :FollowCount)
    end
end
