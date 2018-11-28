class Challenge < ApplicationRecord
  belongs_to :user
  belongs_to :opponent, class_name: 'User'
  belongs_to :video

  def score
    user_score = 0
    opponent_score = 0

    self.video.questions.each do |q|
      q.answer_users.each do |ua|
        user_score += 1 if ua.user == self.user && ua.answer.correct
        opponent_score += 1 if ua.user == self.opponent && ua.answer.correct
      end
    end

    return {user: user_score, opponent: opponent_score}
  end
end
