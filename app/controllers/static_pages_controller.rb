class StaticPagesController < ApplicationController
  def home
    @question = current_user.questions.build if signed_in?
  end

  def help
  end

  def privacy
  end
end
