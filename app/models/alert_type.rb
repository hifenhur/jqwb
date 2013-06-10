class AlertType < ActiveRecord::Base
	self.table_name = "type_alerts"
  attr_accessible :description
	has_many :alerts, class_name: 'Alert', foreign_key: 'id_type_alert'

  def to_s
   description
  end

end