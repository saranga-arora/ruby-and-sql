# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file, under db folder 

# 1b. check out the model file, under the app folder

# 1c. output records in companies table
Company.all #gives you array of company in databases
puts "There are now #{Company.all.count} companies." #outputs number of records

# 2. create new companies
values = {  name: "Apple, Inc.", #using hash of key:value pairs;
            url: "https://apple.com", 
            city: "Cupertino", 
            state: "CA"} #add values based on structure of database; don't need to fill all the columns!

apple = Company.new(values) #creates new company and passes it values we set above
apple.save #stores the Apple record into the database

puts "There are now #{Company.all.count} companies."

values = {  name: "Amazon, Inc.", #note: we can reuse the variable name, values and redefine it 
            url: "https://amazon.com", 
            city: "Seattle", 
            state: "WA"}

amazon = Company.new(values)
amazon.save
puts "There are now #{Company.all.count} companies."

# 3. query companies table
puts Company.all #outputs array of all companies in database
puts Company.all.inspect #shows actual data in the database
Company.where()

# 4. read column values from row

# 5. update attribute value
