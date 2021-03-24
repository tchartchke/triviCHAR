class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :player_id
      t.integer :quiz_id
      t.string :comment

      t.timestamps
    end
  end
end
