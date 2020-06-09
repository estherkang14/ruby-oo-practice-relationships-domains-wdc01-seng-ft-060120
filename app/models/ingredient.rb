class Ingredient
    attr_reader :name, :calories
    attr_accessor :dessert 
    @@all = [ ] 

    def initialize(name, calories, dessert)
        @name = name 
        @calories = calories 
        @dessert = dessert 
        @@all << self 
    end 

    def self.all 
        @@all
    end 
end 