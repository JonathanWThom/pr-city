class Exercise < ActiveRecord::Base
  belongs_to :user
  validates :name, :record, :date, :unit, :presence => true
  audited

  def revisions_in_order
    self.revisions.sort! { |a,b| a.date <=> b.date }
  end

  def convert_time
    Time.at(self.record).utc.strftime("%H:%M:%S") #=> "01:00:00"
  end
end
