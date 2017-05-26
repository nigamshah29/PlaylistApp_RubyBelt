class AdditionsController < ApplicationController
  def create
    @add = Addition.create(playlist_id: params[:playlist_id], song_id: params[:song_id])
    if @add
      flash[:notice] = "Song added to your playlist!"
      redirect_to "/dashboard/#{current_user.id}"
    else
      flash[:errors] = @add.errors.full_messages
      redirect_to "/dashboard/#{current_user.id}"
    end
  end

  def destroy
    Addition.find_by(playlist_id: params[:playlist_id], song_id: params[:song_id]).delete
    redirect_to "/dashboard/#{current_user.id}"
  end
end
