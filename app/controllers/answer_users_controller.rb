class AnswerUsersController < ApplicationController

  def create
    @video = Video.find(params[:video_id])
    @answers_array = []
    @points = 0
    @video.questions.each_with_index do |question, index|
      question_number = index
      given_answer_index = params["question-#{question_number}"][:answer].to_i
      given_answer = question.answers[given_answer_index]
      @points += 1 if given_answer.correct == true
      @user_answer = AnswerUser.new(user: current_user, answer: given_answer)
      @user_answer.save!
      @answers_array << given_answer
    end
    redirect_to video_path(@video)
    authorize @user_answer
  end

  private

  def answer_users_params
    params.permit("question-1", "question-2", "question-3", :answer, :video_id)
  end
end