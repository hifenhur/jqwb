class Position < ActiveRecord::Base
  self.table_name = "position"
  acts_as_gmappable
  attr_accessible :dh_ins, :latitude, :longitude

  def to_s
  	"#{self.latitude} #{self.longitude}"
  end
end
