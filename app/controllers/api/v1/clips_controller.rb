class Api::V1::ClipsController < ApplicationController
  before_action :find_playlist, only: [:index, :create]

  def index
    if @playlist
      render json: { name: @playlist.name, clips: @playlist.clips }, status: :ok
    else
      render json: { error: "Playlist Not Found "}
    end
  end

  def create
    @clip = Clip.new(clip_params)
    if !@playlist.clips.map{|clip| clip.twitch_tr_id}.include?(@clip.twitch_tr_id) #Checks to see if clip is in playlist already
      @playlist.clips << @clip
      render json: @clip
    else
      render json: { error: "Clip Not Added" }
    end
  end

  private

  def clip_params
    params.require(:clip).permit(:title, :broadcaster, :thumbnail, :twitch_tr_id)
  end

  def find_playlist
    @playlist = Playlist.find(params[:playlist_id])
  end
end
