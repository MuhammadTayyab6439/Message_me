class User < ApplicationRecord
    
    validates :Username, presence: true, length: { minimum: 3, maximum: 15 },
            uniqueness: { case_sensitive: false }
    has_many :messages
    has_secure_password
end
