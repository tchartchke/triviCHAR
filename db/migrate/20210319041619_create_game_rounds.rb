class CreateGameRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :game_rounds do |t|
      t.integer :game_id
      t.integer :round_id
      t.string :status, default: 'open'

      t.timestamps
    end
  end
end
