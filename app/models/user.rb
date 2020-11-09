class User < ApplicationRecord
    has_many :reviews
    has_many :businesses, through: :reviews

    validates :name, :email, presence: true
    validates :email, uniqueness: true
end
