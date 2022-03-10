class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :genre
      t.string :skills
      t.string :platform
      t.string :game_image
      t.integer :user_id
      t.integer :squad_id
    end
  end
end
