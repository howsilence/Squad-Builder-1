class CreateSquads < ActiveRecord::Migration[6.1]
  def change
    create_table :squads do |t|
      t.string :squad_name
      t.string :availability
      t.string :squad_img
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :game_id
      t.string :members
    end
  end
end
