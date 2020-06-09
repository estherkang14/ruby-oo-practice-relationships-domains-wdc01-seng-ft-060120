class Listing
    attr_reader :city
    @@all = [ ] 

    def initialize(city)
        @city = city
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def guests 
        #using #trips method here instead of writing out
        #the full code which is:
        #listing_trips = Trip.all.select {|trip| 
        #   trip.listing == self }
        #and then calling listing_trips.map do |trip|
        trips.map do |trip|
            trip.guest 
        end 
    end 

    def trips 
        Trip.all.select do |trip|
            trip.listing == self 
        end 
    end 

    def trip_count
        trips.count 
    end 

    def self.find_all_by_city(city)
        self.all.find do |listing|
            listing == city
        end 
    end 

    def self.most_popular
        self.all.max_by do |listing|
            listing.trip_count 
        end 
    end 
end 