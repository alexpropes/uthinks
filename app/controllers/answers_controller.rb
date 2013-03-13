class AnswersController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
  end

  def create
	@question = Question.find(params[:question_id])
	@answer = @question.answers.build(params[:answer])
	@answer.user = current_user
    if @answer.save
      flash[:success] = "Answer added!"
      redirect_to :back
    else
	  flash[:error] = "Not this time"
	  redirect_to :back
    end
  end

  def destroy
  end
  
end