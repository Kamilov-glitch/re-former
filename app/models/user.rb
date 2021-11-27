class User < ApplicationRecord
    validates :username, :password, :email, presence: true
    validates :password, length: { in: 6..20 }
    validates :username, length: { in: 2..15 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
