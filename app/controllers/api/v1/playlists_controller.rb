class Api::V1::PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
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

  def show
    @playlist = Playlist.find(params[:id])
    if @playlist
      render json: PlaylistSerializer.new(@playlist), status: :ok
    else
      render json: { error: "Not Found"}
    end
  end
  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
