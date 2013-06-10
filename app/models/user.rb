class User < ActiveRecord::Base
	self.table_name = "user_web"
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable :registerable,
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :login, :password, :password_confirmation, :remember_me

  #antes de destruir um usuario limpa a tabela roles_users
  before_destroy :limpar_relacao

  #relacao de varios usuarios para varias regras*
  has_and_belongs_to_many :roles

  #verifica se o usuario é admin
  def admin?
    self.roles.include?(Role.where(name: 'admin').first)
  end

  def limpar_relacao
    self.roles.clear
  end
  
end
