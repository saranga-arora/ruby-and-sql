# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-associations.rb

# 1. write code to display each contact (you can reuse the previous lab's code) and include the contact's company name:
puts "Contacts: #{Contact.all.count}"
all_contacts = Contact.all
for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{contact.company.name}" 
end

# 2. similar to above, but this time organized by company, write code to display each company (name) and its contacts:
all_companies = Company.all
for company in all_companies
    puts "#{company.name}"
    for contact in company.contacts  
        puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
    end
end
