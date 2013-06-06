class User < ActiveRecord::Base
	self.table_name = "user_web"
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable :registerable,
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :login, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_and_belongs_to_many :roles

  def admin?
    self.roles.include?(Role.where(name: 'admin').first)
  end
  
end
