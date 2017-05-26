class Song < ApplicationRecord
  has_many :additions
  has_many :song_playlists, through: :additions, source: :playlist

  validates :title, :artist, presence: true, length: {minimum: 2}
  
end
