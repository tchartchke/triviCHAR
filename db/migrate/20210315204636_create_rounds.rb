class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.string :subject
      t.integer :quiz_id

      t.timestamps
    end
  end
end
