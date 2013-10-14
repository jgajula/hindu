class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :encrypted_password, :first_name, :gothram, :last_name, :status, :zipcode

  validates :email, presence:true
  validates :password, presence:true
  validates :password_confirmation, presence:true
  validates :zipcode, presence:true

end
