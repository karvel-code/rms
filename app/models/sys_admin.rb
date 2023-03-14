class SysAdmin < ApplicationRecord
    before_save { email.downcase! }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :first_name,  presence: true, length: { maximum: 25 }
    validates :last_name,  presence: true, length: { maximum: 25 }
    validates :email, presence: true, 
                    length: { maximum: 255 }, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
end
