class AddSongPictureToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :song_picture, :text
  end
end
