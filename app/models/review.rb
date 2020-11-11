class Review < ApplicationRecord
    belongs_to :user
    belongs_to :business
  

    validates :description,  presence: true
    validates :covid_index, numericality: {greater_than: 0, less_than: 6}
    validates :business, uniqueness: {scope: :user, message:"has already been reviewed"}

    
end
