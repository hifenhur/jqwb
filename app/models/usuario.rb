class Usuario < ActiveRecord::Base
  self.table_name = 'users'
  attr_accessible :matricula, :name, :dh_ins

  has_many :positions, :foreign_key => "id_user"

  def last_position
  	self.positions.order("dh_ins DESC").first
  end
  
end
