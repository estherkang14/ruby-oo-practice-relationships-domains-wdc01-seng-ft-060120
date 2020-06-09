class Bakery
    attr_reader :name, :dessert
    @@all = [ ]

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def desserts 
        Dessert.all.select do |dessert| 
            dessert.bakery == self 
        end 
    end 

end 