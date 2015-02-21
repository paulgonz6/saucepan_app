class Response < ActiveRecord::Base
  belongs_to :prompt
  validates :content, :presence => true
end
