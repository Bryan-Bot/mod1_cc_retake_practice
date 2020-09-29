class Restaurant

    attr_accessor :owner, :name, :star_rating
    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select{|n|n.restaurant == self}
    end

    def recipes
        menu_items.map{|n|n.recipe}
    end

    # def has_dish?(recipe)
    #     if 

    # end

    def self.highest
        self.all.max_by{|n|n.star_rating}
    end
end