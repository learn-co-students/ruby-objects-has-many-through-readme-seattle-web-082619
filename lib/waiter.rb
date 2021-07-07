class Waiter
    attr_reader :name, :years_of_experience
    #using a reader to limit its external access, will change to attr_assor if i need both read and write methods 
    @@all = []
    #making an array that holds all instances 

    def initialize(name, years_of_experience)
        @name = name 
        @years_of_experience = years_of_experience
        @@all << self 
        # shoveling in any instance created into all which is a class Method 
    end 

    def self.all 
        @@all       
    end 

    def new_meal(customer,total, tip)
        Meal.new(self,customer,total,tip)
    end 

    def meals
        meal_instances = []
        Meal.all.each do |meal|
            if meal.waiter == self
            meal_instances << meal 
            end 
        end 
        return meal_instances
    end 


    def best_tipper
        customer = nil
        biggest_tip = 0 
        meals.each do |meal|
            if meal.tip > biggest_tip
                biggest_tip = meal.tip
                customer = meal.customer
            end 
        end 
        return customer
    end 
    # two different variables to keep track of use each 
end

