class Guest
    attr_reader :name
    @@all = [ ] 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all
    end
        #using #trips method here instead of writing out
        #the full code which is:
        #guest_trips = Trip.all.select {|trip| 
        #   trip.guests == self }
        #and then calling guest_trips.map do |trip|
    def listings
        trips.select do |trip|
            trip.listing
        end 
    end 

    def trips 
        Trip.all.select do |trip|
            trip.guest == self 
        end 
    end 

    def trip_count 
        trips.count 
    end 

    def self.pro_traveller 
        self.all.select do |guest|
            guest.trip_count > 1 
        end 
    end 

    def self.find_all_by_name(name)
        self.all.find do |guest| 
            guest == name 
        end 
    end 
end 