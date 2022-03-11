class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :genre
      t.string :platforms
      t.string :game_image
      t.boolean :crossplay
    end
  end
end
