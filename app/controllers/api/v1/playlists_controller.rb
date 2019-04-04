class Api::V1::PlaylistsController < ApplicationController
  def create
    @playlist = Playlist.create(playlist_params)
    render json: { playlist: PlaylistSerializer.new(@playlist) }, status: :created
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
