class Agent < ActiveRecord::Base
  self.table_name = 'agent'
  attr_accessible :nome

  belongs_to :usuario, class_name: 'Usuario', foreign_key: 'id_user'
  has_many :alerts, class_name: 'Alert', foreign_key: 'id_agent'

  def to_s
    "#{self.nome}"
  end
end
