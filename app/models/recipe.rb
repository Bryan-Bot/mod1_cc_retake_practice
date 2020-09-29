class Recipe
    attr_reader :name, :description 
    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select { |n| n.recipe == self}
    end

    def restaurants
        menu_items.map{|n|n.restaurant}
    end
    

    def average_price
        price = menu_items.map{|n|n.price}
        (price.sum)/price.length
    end

    def highest_price
        high = menu_items.map{|n| n.price}
        high.max
    end
    def cheapest_price
        low = menu_items.map{|n| n.price}
        low.min
    end

    # def self.inactive 
    # end

end