class Apartment < ApplicationRecord
  acts_as_tenant(:account)
  validates_uniqueness_to_tenant :name
  has_many :units
end
