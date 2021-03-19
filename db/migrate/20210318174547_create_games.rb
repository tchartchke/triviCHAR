class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :player_id
      t.integer :quiz_id
      t.string :status, default: 'new'

      t.timestamps
    end
  end
end
