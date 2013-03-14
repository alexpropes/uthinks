class StaticPagesController < ApplicationController
  def home
    @question = current_user.questions.build if signed_in?
	@recent_items = current_user.recent.paginate(page: params[:page])
  end

  def help
  end

  def privacy
  end
end
