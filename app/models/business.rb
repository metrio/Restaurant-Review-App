class Business < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews

    geocoded_by :location
    after_validation :geocode

    def avg_covid
        if self.reviews.count != 0
            total = self.reviews.sum {|review| review.covid_index}
            avg = (total / self.reviews.count)
        else
            "No Reviews on this place"
        end
    end

    def sorted_reviews
        self.reviews.reverse
    end


end
