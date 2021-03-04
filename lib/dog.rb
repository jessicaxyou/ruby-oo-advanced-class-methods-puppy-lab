require 'pry'

class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        #initializes with one argument - a name
        @name=name
        save
    end

    #is a class method returns all dog instances
    def self.all
        @@all
    end

    #is a class method returns all dog instances
    def self.all
        @@all.each do |name|
            puts "#{name}"
        end
    end

    #is a class method that empties the @@all array of all existing dogs
    def self.clear_all
        new_array = @@all.clear
        puts new_array #need to make sure that new_array is called once @@all is emptied
    end
    
    #is a class method that puts out the name of each dog to the terminal
    def self.print_all
        @@all.each do |dog|
            puts "#{dog.name}" #dog only gives the object_id. dog.name returns name of actual dog through @name
        end
    end

    #adds this dog instance to the @@all array when called
    #gets called inside initialize when a new Dog is created
    def save
        @@all << self
    end

end