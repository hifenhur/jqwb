class Position < ActiveRecord::Base
  self.table_name = "position"
  acts_as_gmappable
  attr_accessible :dh_ins, :latitude, :longitude

  belongs_to :usuario, class_name: "Usuario", :foreign_key => "id_user"

  def to_s
  	"#{self.latitude} #{self.longitude}"
  end

  def gmaps4rails_title
      "#{self.usuario.name}"
  end

  def gmaps4rails_marker_picture
	 {
	  "picture" => "../assets/agent.png",          # string,  mandatory
	   "width" =>  45,          # integer, mandatory
	   "height" => 45          # integer, mandatory
	 }
	end
end
