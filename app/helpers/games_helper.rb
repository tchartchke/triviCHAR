module GamesHelper
  def status(game)
    game.status 
  end

  def curr_round(game)
    game.first_open_round
  end

  def curr_subject(game)
    curr_round(game).subject
  end

  def game_rounds(game)
    game.game_rounds.count
  end

  def curr_or_new_game_for(user:, quiz:)
    user.games.find{ |game| game.quiz == quiz} || Game.new(player_id: user.id)
  end

  def this_round(game)
    game.rounds_submitted + 1
  end

  def name(game)
    game.quiz.title
  end
end
