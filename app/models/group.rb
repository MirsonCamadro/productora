class Group < ApplicationRecord
    enum gender: [ :males, :females, :both]
    has_many :concerts

    def total_concerts
        self.concerts.count
    end

    def debut
        concerts = self.concerts
        if concerts.present?
            concerts.order(concert_date: :desc).first.concert_date
        else
            "sin debut"
        end
    end
end
