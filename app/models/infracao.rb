class Infracao < ActiveRecord::Base

  self.table_name = 'type_infraction'
  attr_accessible :description

  def to_s
    "#{self.description}"
  end

end
