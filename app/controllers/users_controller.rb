class UsersController < ApplicationController
  def index
    if current_user
      redirect_to "/dashboard/#{@user.id}"
    else
      redirect_to "/welcome"
    end
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user
      session[:user_id] = @user.id
      redirect_to "/dashboard/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/welcome"
    end
  end

  def register
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/dashboard/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/welcome"
    end
  end

  def playlist
    @user = User.find(params[:user_id])
    @playlist = Playlist.find(@user.id)
    @additions = Addition.where(playlist_id: @playlist.id).group(:song_id)
  end


  def logout
    reset_session
    redirect_to '/welcome'
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end
