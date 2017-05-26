class PlaylistsController < ApplicationController

  def dashboard
    @songs = Song.all.order('created_at DESC').distinct
    @playlist = Playlist.find_by(user_id: current_user.id)
    # @additions = Addition.where(playlist_id: @playlist.id)
  end

end
