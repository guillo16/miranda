class AnswerUsersController < ApplicationController

  def create
    @challenge = Challenge.new
    @video = Video.find(params[:video_id])
    @answers_array = []
    @points = 0
    @questions = @video.questions
    @video.questions.each_with_index do |question, index|
      question_number = index
      given_answer_index = params["question-#{question_number}"][:answer].to_i
      given_answer = question.answers[given_answer_index]
      @points += 1 if given_answer.correct == true
      @user_answer = AnswerUser.new(user: current_user, answer: given_answer)
      @user_answer.save!
      @answers_array << given_answer
    end
    current_user.update(score: (current_user.score + @points))
    current_user.save!
    authorize @user_answer
  end

  private

  def answer_users_params
    params.permit("question-1", "question-2", "question-3", :answer, :video_id)
  end
end
