class AddStatusToQuiz < ActiveRecord::Migration[6.1]
  def change
    add_column :quizzes, :status, :string, default: 'incomplete'
  end
end
