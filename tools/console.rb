require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

### AIRBNB TESTS START ###
# baltimore = Listing.new("Baltimore")
# seoul = Listing.new("Seoul")
# esther = Guest.new("Esther")
# julian = Guest.new("Julian")
# kristine = Guest.new("Kristine")


# trip_1 = Trip.new(baltimore, esther)
# trip_2 = Trip.new(baltimore, julian)
# trip_3 = Trip.new(seoul, esther)
# trip_4 = Trip.new(seoul, kristine)
# trip_5 = Trip.new(baltimore, kristine) 

# puts baltimore.guests
# puts baltimore.trips 
# puts baltimore.trip_count

# puts esther.listings
# print Guest.pro_traveller 

# puts seoul.guests
# puts baltimore.guests
### AIRBNB TESTS END ###


### BAKERY TESTS BEGIN ###

magnolia = Bakery.new("Magnolia")
bakednwired = Bakery.new("Baked and Wired")
tous = Bakery.new("Tous les Jours")

cookie = Dessert.new("Cookie", magnolia)
croissant = Dessert.new("Croissant", tous)
bananapudding = Dessert.new("Banana Pudding", magnolia)
cupcake = Dessert.new("Cupcake", bakednwired)

# print magnolia.desserts 

chocolate = Ingredient.new("Chocolate", 100, cookie)

# print cookie.ingredients