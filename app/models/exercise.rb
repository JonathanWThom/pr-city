class Exercise < ActiveRecord::Base
  belongs_to :user
  validates :name, :record, :date, :type, :presence => true
end
