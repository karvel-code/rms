class SysAdmin < ApplicationRecord
    attr_accessor :remember_token
    before_save { email.downcase! }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :first_name,  presence: true, length: { maximum: 25 }
    validates :last_name,  presence: true, length: { maximum: 25 }
    validates :email, presence: true, 
                    length: { maximum: 255 }, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }

    def self.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
    
    def self.new_token
        SecureRandom.urlsafe_base64
    end

    def remember
        self.remember_token = SysAdmin.new_token
        update_attribute(:remember_digest, SysAdmin.digest(remember_token))
    end
end
