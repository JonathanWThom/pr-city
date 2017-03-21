class Exercise < ActiveRecord::Base
  belongs_to :user
  validates :name, :record, :date, :unit, :presence => true
  audited
end
