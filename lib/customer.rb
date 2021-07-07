class Customer
  
    attr_reader :name, :age 

    @@all = []
    #array to hold all of alls instances for Customer 

    def initialize(name, age)
        @name = name
        @age = age 
        @@all << self 
    end 
    #initializes the instance with name and age while also shoveling in all instances into all to
    #keep track of the instances 

    def self.all
        @@all
    end 
#establishes the @@all method 

#everything above is setting up my class 
# to use a class method to hold all of the instances 
# and initliazing all the data that comes with an instance (or that is attached)
    def new_meal(waiter,total,tip)
        Meal.new(waiter,self,total,tip)
    end 

    def meals
        meal_array = []
        Meal.all.each do |meal|
            if meal.customer == self
                meal_array.push(meal)
        # iterating over all of the instances 
        # pushes as instance from that customer to an array
        #returns the array 
            end
        end  
        return meal_array
    end 

    # each sandwich -> set a blank array, do your code, return array 
    #returns an array of WAITER instances associated with meal 
    # waiters -->meal <----customer meal is the inbetween connector

    def waiters
        waiters_array = []
        meals.each do |meal|
            waiters_array << meal.waiter 
        end 
        return waiters_array
    end 
end