# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/3-migrations.rb

# **************************
# Don't change or move
Activity.destroy_all
# **************************

# Add new Activity model with database table

# 1. in terminal, run:
# rails generate model Activity

# 2. open newly generated files

# 3. add relevant columns to the db/migrate file

# 4. execute the migration file. in terminal, run:
# rails db:migrate

# Activity is the join model between Salesperson and Contact
# 5. Add the relevant associations to the models.

# 6. Insert at least 2 activities into the activities table
puts "There are now #{Activity.all.count} activities."

activity1 = Activity.new
activity1.action = "Grabbed tacos"
brian = Salesperson.where({last_name: "Eng"})[0]
activity1.salesperson_id = brian.id 
tim = Contact.where({first_name:"Tim"})[0]
activity1.contact_id = tim.id
activity1.save

activity2 = Activity.new
activity2.action = "Liked a tweet"
ben = Salesperson.where({last_name: "Block"})[0]
activity2.salesperson_id = ben.id 
elon = Contact.where({first_name:"Elon"})[0]
activity2.contact_id = elon.id
activity2.save

puts "There are now #{Activity.all.count} activities."
puts ""

# 7. Loop through the salespeople and display their activites and related contacts, e.g.:

for activity in Activity.all 
    puts "#{activity.salesperson.first_name} #{activity.salesperson.last_name}"
    puts "#{activity.action} - #{activity.contact.first_name} #{activity.contact.last_name}"
    puts ""
end
