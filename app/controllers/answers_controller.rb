class AnswersController < ApplicationController

  def create
    @question = Question.find(question_id)
    @answer = @question.create_answer(answer_params)
    # guard clause
    return unless @answer.save
    redirect_to question_path(@question)
  end

  def new
    @question = Question.find(question_id)
  end

  def update
    @question = Question.find(question_id)
    @answer = @question.answer
    if @answer.update(answer_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end

  def question_id
    params[:question_id].to_i
  end
end
