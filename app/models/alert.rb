class Alert < ActiveRecord::Base
	self.table_name = "alert"
	attr_accessible :dh_rx, :street, :space, :plaque, :description, :dh_ins, :cod_infraction, :latitude, :longitude, :status


end