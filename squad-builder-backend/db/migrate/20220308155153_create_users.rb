class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :gamertag
      t.string :platforms
      t.string :availability
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
