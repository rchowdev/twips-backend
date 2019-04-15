class CreateClips < ActiveRecord::Migration[5.2]
  def change
    create_table :clips do |t|
      t.string :twitch_tr_id
      t.string :title
      t.string :broadcaster
      # t.string :game
      # t.integer :views
      t.string :thumbnail
      t.string :embed_url

      t.timestamps
    end
  end
end
