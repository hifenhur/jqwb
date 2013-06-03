class Cupom < ActiveRecord::Base
  
  attr_accessible :descricao, :status

  #nome da tabela
  self.table_name = "pdv"

  #associcoes
  belongs_to :monitor, class_name: 'Munitor', :foreign_key => "monitor_id"

end
