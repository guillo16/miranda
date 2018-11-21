class AnswerUsersController < ApplicationController

  def create
    AnswerUser.create(user: current_user, answer: params["question-1"][:answer])
    AnswerUser.create(user: current_user, answer: params["question-2"][:answer])
    AnswerUser.create(user: current_user, answer: params["question-3"][:answer])
    raise
  end

  private

  def answer_users_params
    params.require(:user_answer).permit("question-1", "question-2", "question-3", :answer)
  end
end
