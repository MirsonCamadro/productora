class Group < ApplicationRecord
    enum gender: [ :males, :females, :both]
    has_many :concerts

    def total_concerts
        self.concerts.count
    end

    def debut
        concerts = self.concerts
        if concerts.nil?
            return "sin debut"
        else
            concerts.order(concert_date: :desc).concert_date
        end
    end
end
