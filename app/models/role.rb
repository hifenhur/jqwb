class Role < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :users

  #antes de destruir limpa roles_users
  before_destroy :limpar_relacao

  def limpar_relacao
    self.users.clear
  end
end
