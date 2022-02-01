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
Company.all #array of all companies in database
Company.all.inspect #actual data in the database

Company.where({state: "CA"}) #an array of companies where state = CA
california_company = Company.where({state:"CA"})[0] #just the first company in the array
puts california_company.inspect #output just the first company in the array

# 4. read column values from row
puts california_company.read_attribute(:url) #output the url of the california company
puts california_company.url #easier way to output the url of the california company

# 5. update attribute value
california_company.write_attribute(:slogan, "Think different.") #adds the slogan of the california company
california_company.slogan = "Think different." #easier way to add the slogan
california_company.save #saves the slogan 

puts california_company.inspect #outputs the company 

# 5. create new company by updating attribute values

new_company = Company.new 
new_company.name = "Tesla, Inc."
new_company.url = "https://tesla.com"
new_company.city = "Palo Alto"
new_company.state = "CA"
new_company.save 

puts new_company.inspect 
puts "There are now #{Company.all.count} companies."