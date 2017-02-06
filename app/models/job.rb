class Job < ActiveRecord::Base
  belongs_to :chore

  validates :description, :presence => true
end
