class Prompt < ActiveRecord::Base
  belongs_to :presenter, :class_name => "User", :foreign_key => "user_id"
  has_many :responses

  # validates :presenter, :presence => true
  validates :question, :presence => true
  validates :closing_time, :presence => true
end
