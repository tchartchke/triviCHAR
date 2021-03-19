class PlayerAnswer < ApplicationRecord
  belongs_to :game_round
  belongs_to :question

end


# PlayerAnswer(id: integer, game_round_id: integer, question_id: integer, answer: string, created_at: datetime, updated_at: datetime)