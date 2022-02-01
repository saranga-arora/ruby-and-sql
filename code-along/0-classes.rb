# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb


# Intro Context
brians_favorite_food = "tacos" #this is an instance of the string class
puts brians_favorite_food.class #this tells us what type of thing we are working with (a string)
puts brians_favorite_food.upcase #this is a method supported by the string class

bens_favorite_food = "sushi" #another instance of the string class, so also can support the upcase method
puts bens_favorite_food.upcase

number_of_tacos = 5 #this is an instance of the integer class
puts number_of_tacos.class #this tells us what type of thing we are working with (an integer)

# Our Own String Class
class Dog #this creates Dog Class

    def speak #this creates the speak method
        puts "Woof"
    end 
end 

jenkins = Dog.new #creates new Dog, because .new exists with every class
jenkins.speak #calls on the speak method

rover = Dog.new 
rover.speak 