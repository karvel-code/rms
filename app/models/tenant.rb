class Tenant < ApplicationRecord
  acts_as_tenant(:account)
  
  # Validations
  validates_uniqueness_to_tenant :email
  validates_uniqueness_to_tenant :phone
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
