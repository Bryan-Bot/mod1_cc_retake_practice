class RestaurantOwner

    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select{|n|n.owner == self}
    end

    def menu_items
        MenuItem.all.filter{|n|n.restaurant.owner == self}
    end

    def self.average_age
        avg = self.all.map{|n|n.age}
        (avg.sum)/avg.length
    end
end