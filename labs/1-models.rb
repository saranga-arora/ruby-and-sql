# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file, under db folder

# 1b. check out the model file, under the app folder

# 1c. output records in contact table
Contact.all 
puts "There are now #{Contact.all.count} contacts." 

# 2. create 1-2 new contacts for each company (they can be made up)

apple = Company.where({name: "Apple, Inc."})[0] #pulling out company in the array
apple_id = apple.id #gives us the id for the company, so we can use it for the contact
values = { first_name: "Craig", 
         last_name: "Federighi",
         email: "craig@apple.com", 
         phone_number: "888-555-1212",
         company_id: apple_id  
         }
apple_contact = Contact.new(values)
apple_contact.save 
puts "There are now #{Contact.all.count} contacts." 

apple_contact = Contact.new 
apple_contact.first_name = "Tim"
apple_contact.last_name = "Cook"
apple_contact.email = "tim@apple.com"
apple_contact.phone_number = "123-456-7890"
apple_contact.company_id = apple_id 
apple_contact.save
puts "There are now #{Contact.all.count} contacts."

amazon = Company.where({name: "Amazon, Inc."})[0]
amazon_id = amazon.id 
amazon_contact = Contact.new 
amazon_contact.first_name = "Andy"
amazon_contact.last_name = "Jassy"
amazon_contact.email = "andy@amazon.com"
amazon_contact.phone_number = "555-222-444"
amazon_contact.company_id = amazon_id 
amazon_contact.save 
puts "There are now #{Contact.all.count} contacts."

tesla = Company.where({name: "Tesla, Inc."})[0]
tesla_id = tesla.id 
tesla_contact = Contact.new 
tesla_contact.first_name = "Elon"
tesla_contact.last_name = "Musk"
tesla_contact.email = "elon@tesla.com"
tesla_contact.phone_number = "000-545-222"
tesla_contact.company_id = tesla_id 
tesla_contact.save 
puts "There are now #{Contact.all.count} contacts."

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

puts "Contacts: #{Contact.all.count}"
all_contacts = Contact.all #gets array of all contacts in contacts table
for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}" 
end