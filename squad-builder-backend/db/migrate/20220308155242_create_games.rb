class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.string :preferred_skills
      t.integer :team_size
      t.string :platform
    end
  end
end
