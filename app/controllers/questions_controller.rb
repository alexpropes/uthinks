class QuestionsController < ApplicationController
  before_filter :signed_in_user

  def index
  end
  
  def new
	@question = current_user.questions.build if signed_in?
  end
	
  def create
    @question = current_user.questions.build(params[:question])
    if @question.save
      flash[:success] = "Question added!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def show
    @question = Question.find(params[:id])
	@answer = @question.answers.build if signed_in?
  end
  
  def destroy
  end
end