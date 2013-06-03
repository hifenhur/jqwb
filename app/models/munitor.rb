class Munitor < ActiveRecord::Base
  self.table_name = 'monitor'
  attr_accessible :description, :name, :type, :id_monitor
  has_many :cupoms
end
