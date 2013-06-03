class Alert < ActiveRecord::Base

	attr_accessible :dh_rx, :street, :space, :plaque, :description, :dh_ins, :cod_infraction, :latitude, :longitude, :status
	
	#configura saida json para googlemaps
	acts_as_gmappable
	#nome da tabela
	self.table_name = "alert"
	#associacoes
	belongs_to :munitor, :class_name => "Munitor"
end