class CreatePlaylistClips < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_clips do |t|
      t.integer :playlist_id
      t.integer :clip_id
      t.timestamps
    end
  end
end
