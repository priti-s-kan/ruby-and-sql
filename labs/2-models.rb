# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_saleperson = Salesperson.new
new_saleperson["first_name"] = "Nikasha"
new_saleperson["last_name"] = "Patel"
new_saleperson["email"] = "nikasha.patel@kellogg.northwestern.edu"
p new_saleperson
new_saleperson.save

new_saleperson = Salesperson.new
new_saleperson["first_name"] = "Jaya"
new_saleperson["last_name"] = "Yadav"
new_saleperson["email"] = "jaya.yadav@kellogg.northwestern.edu"
p new_saleperson
new_saleperson.save

new_saleperson = Salesperson.new
new_saleperson["first_name"] = "Abhi"
new_saleperson["last_name"] = "Udayshankar"
new_saleperson["email"] = "abhi.udayshankar@kellogg.northwestern.edu"
p new_saleperson
new_saleperson.save

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"

# 4. modify/update column data for a row in the salespeople table.

nikasha = Salesperson.find_by({"first_name" => "Nikasha"})
nikasha["first_name"] = "Nikasha Shila"
nikasha.save
p nikasha

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

Salespeople = Salesperson.all
for friend in Salespeople
    first_name = friend["first_name"]
    last_name = friend["last_name"]
    puts "#{first_name} #{last_name}"
end