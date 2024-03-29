class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  # Setup accessible (or protected) attributes for your model
  attr_accessor :login
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :login, :photo
  # attr_accessible :title, :body
  has_many :orders
  has_many :coffees, :through => :orders
  accepts_nested_attributes_for :orders

  validates_presence_of :username
  validates_uniqueness_of :username, :email, :case_sensitive => false

  has_attached_file :photo

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end
  
end
