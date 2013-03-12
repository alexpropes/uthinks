class Question < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  
  validates :content, presence: true
  validates :user_id, presence: true
  
  default_scope order: 'questions.created_at DESC'
end