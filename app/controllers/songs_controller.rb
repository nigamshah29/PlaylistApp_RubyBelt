class SongsController < ApplicationController

  def create
    @song = Song.new(title: params[:title], artist: params[:artist])
    if @song.save
      flash[:notice] = "Song added!"
      redirect_to "/dashboard/#{current_user.id}"
    else
      flash[:errors] = @song.errors.full_messages
      redirect_to "/dashboard/#{current_user.id}"
    end
  end

  def show
    @song = Song.find(params[:id])
    @additions = Addition.where(song_id: @song.id).group(:playlist_id)
  end
end
