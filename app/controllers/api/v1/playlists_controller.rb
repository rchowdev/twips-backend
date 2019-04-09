class Api::V1::PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all.sort_by(&:updated_at).reverse
    render json: @playlists #Serializer?
  end

  def create
    @playlist = Playlist.create(playlist_params)
    if @playlist.valid?
      render json: PlaylistSerializer.new(@playlist), status: :created
    else
      render json: { error: "Playlist not created" }
    end
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(playlist_params)

    render json: PlaylistSerializer.new(@playlist)
  end

  def destroy 
    @playlist = Playlist.destroy(params[:id])

    render json: PlaylistSerializer.new(@playlist)
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
