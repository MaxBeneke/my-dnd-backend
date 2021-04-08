class User < ApplicationRecord
    has_many :characters
    has_many :proficiency_lists, through: :characters
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }, presence: true
    validates :password, presence: true 
end
