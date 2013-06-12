class Alert < ActiveRecord::Base

	attr_accessible :dh_rx, :street, :space, :plaque, :description, :dh_ins, :cod_infraction, :latitude, :longitude
	
	#configura saida json para googlemaps
	acts_as_gmappable

	#pode ser exportado com csv
	

	#nome da tabela
	self.table_name = "alert"
	#associacoes
  	belongs_to :status, class_name: 'AlertType', foreign_key: 'id_type_alert'
	belongs_to :monitor, class_name: "Munitor",foreign_key: 'id_monitor'
	belongs_to :agent, class_name: 'Agent', foreign_key: 'id_agent'
  	belongs_to :infracao, class_name: 'Infracao', :foreign_key => 'cod_infraction'

	def gmaps4rails_marker_picture
	 {
	  "picture" => "assets/alert.png",          # string,  mandatory
	   "width" =>  32,          # integer, mandatory
	   "height" => 32          # integer, mandatory
	 }
	end

	def gmaps4rails_infowindow
      "<p><b>placa:</b> #{self.plaque}</p><p><b>vaga:</b> #{self.space}</p>"
    end

    def gmaps4rails_title
	  "#{self.plaque}"
	end
  
end