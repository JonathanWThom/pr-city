class Exercise < ActiveRecord::Base
  belongs_to :user
  validates :name, :record, :date, :unit, :presence => true
  audited

  def revisions_in_order
    self.revisions.sort! { |a,b| a.date <=> b.date }
  end
end
