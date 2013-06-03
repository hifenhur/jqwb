class Munitor < ActiveRecord::Base
  #comando pra suprimir erro na coluna
  self.inheritance_column = :_type_disabled

  attr_accessible :description, :name, :type, :id_monitor

  #nome da tabela
  self.table_name = 'monitor'

  #associacoes
  has_many :cupons, class_name: 'Cupom', :foreign_key => "id_monitor"
  has_many :alerts, :foreign_key => "id_monitor"

end
