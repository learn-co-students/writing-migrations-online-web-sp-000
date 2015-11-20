# Let's Write Some Migrations
##Objectives
1. Write your own migrations
2. Run a migration to create a table
3. Run a migration to add a column to a table
4. Run a migration to change something in the table

## Creating a table
The first thing we will do is create a table. In `db/migrate/01_create_students.rb`, write the code to create a table with ActiveRecord. We've created a class for you called `CreateStudents`. To get access to the ActiveRecord methods, don't forget to inherit from ActiveRecord::Migration.

Next, define a method called change and use the ActiveRecord `create_table` method within that method to create the table. The table should have a `:name` column with a type `string`.

After you finish defining the `change` method, run the migrations by running `rake db:migrate` in your terminal.

