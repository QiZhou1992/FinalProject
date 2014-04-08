class AlbumFollowsController < ApplicationController
  before_action :set_album_follow, only: [:show, :edit, :update, :destroy]

  # GET /album_follows
  # GET /album_follows.json
  def index
    @album_follows = AlbumFollow.all
  end

  # GET /album_follows/1
  # GET /album_follows/1.json
  def show
  end

  # GET /album_follows/new
  def new
    @album_follow = AlbumFollow.new
  end

  # GET /album_follows/1/edit
  def edit
  end

  # POST /album_follows
  # POST /album_follows.json
  def create
    @album_follow = AlbumFollow.new(album_follow_params)

    respond_to do |format|
      if @album_follow.save
        format.html { redirect_to @album_follow, notice: 'Album follow was successfully created.' }
        format.json { render action: 'show', status: :created, location: @album_follow }
      else
        format.html { render action: 'new' }
        format.json { render json: @album_follow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_follows/1
  # PATCH/PUT /album_follows/1.json
  def update
    respond_to do |format|
      if @album_follow.update(album_follow_params)
        format.html { redirect_to @album_follow, notice: 'Album follow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @album_follow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_follows/1
  # DELETE /album_follows/1.json
  def destroy
    @album_follow.destroy
    respond_to do |format|
      format.html { redirect_to album_follows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_follow
      @album_follow = AlbumFollow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_follow_params
      params.require(:album_follow).permit(:AlbumID, :FollowerID)
    end
end
