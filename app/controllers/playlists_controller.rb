class PlaylistsController < ApplicationController

  def dashboard
    @songs = Song.all.order('created_at DESC').distinct
    @playlist = Playlist.find_by(user_id: current_user.id)
  end

end
