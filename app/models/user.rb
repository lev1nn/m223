class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, length: { minimum: 12 }
    enum role: [
        :user,
        :admin
    ]
end
