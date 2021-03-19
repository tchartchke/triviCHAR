class CreatePlayerAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :player_answers do |t|
      t.integer :game_round_id
      t.integer :question_id
      t.string :answer

      t.timestamps
    end
  end
end
