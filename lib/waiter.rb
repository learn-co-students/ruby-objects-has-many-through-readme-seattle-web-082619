class Waiter
    attr_reader :name, :experience
    attr_accessor

    @@all = []

    def initialize(name, experience)
        @name = name
        @experience = experience

        @@all << self
    end

    def self.all 
        @@all 
    end 

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            meal.waiter == self
        end
    end
    
    def best_tipper
        largest_tipper = nil
        largest_tip = 0
        meals.select do |meal|
            if meal.tip > largest_tip
                largest_tip = meal.tip
                largest_tipper = meal.customer
            end
        end
        largest_tipper
    end 


    

end