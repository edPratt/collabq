class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(question_id)
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(question_id)
  end

  def create
    @question = Question.new(question_params)
    # binding.pry
    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(question_id)
    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(question_id)
    @question.destroy

    redirect_to questions_path
  end

  private

  def question_id
    params[:id].to_i
  end

  def question_params
    params.require(:question).permit(:body, :user_id)
  end
end
