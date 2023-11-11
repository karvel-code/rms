class Account < ApplicationRecord
  has_many :sys_admins, dependent: :destroy
  has_many :apartments, dependent: :destroy
  has_many :units, dependent: :destroy
end
