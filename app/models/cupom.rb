class Cupom < ActiveRecord::Base
  self.table_name = "pdv"
  attr_accessible :descricao, :monitor_id, :status
  belongs_to :munitor, class_name: 'Munitor'

  def monitor
  	Munitor.where("id_monitor = #{self.monitor_id} ")
  end

  
end
