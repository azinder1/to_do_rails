class Chore < ActiveRecord::Base
  validates :name, :presence => true
end
