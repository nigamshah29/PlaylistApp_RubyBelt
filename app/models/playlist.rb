class Playlist < ApplicationRecord
  belongs_to :user
  has_many :additions
  has_many :playlist_songs, through: :additions, source: :song
end
