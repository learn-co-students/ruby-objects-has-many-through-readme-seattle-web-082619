class Meal

    attr_reader :waiter, :customer, :total, :tip

    @@all = []
    #array to store all of our instances  

    def initialize(waiter,customer,total,tip)
        @waiter  = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self 
        #self in this context is the instance that is created 
    end 

    def self.all 
        @@all 
    end 


end