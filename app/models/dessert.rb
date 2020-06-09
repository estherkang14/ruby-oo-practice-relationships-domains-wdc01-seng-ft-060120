class Dessert
    attr_reader :name, :ingredient
    attr_accessor :bakery  
    @@all = [ ]

    def initialize(name, bakery)
        @name = name 
        @bakery = bakery
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self 
        end
    end 


end 