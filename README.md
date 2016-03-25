# Let's Write Some Migrations
##Objectives

1. Write your own migrations
2. Run a migration to create a table
3. Run a migration to add a column to a table
4. Run a migration to change something in the table

## Creating a table

The first thing we will do is create a table. In `db/migrate/01_create_students.rb`, write the code to create a table with ActiveRecord. We've created a class for you called `CreateStudents`. To get access to the ActiveRecord methods, don't forget to inherit from `ActiveRecord::Migration`.

Next, define a method called `change` and use the ActiveRecord `create_table` method within that method to create the table. The table should have a `:name` column with a type `string`.

After you finish defining the `change` method, run the migrations by running `rake db:migrate` in your terminal.

## Adding a column

The next thing we will do is add a couple of columns to the `students` table we just created. To do this, we will create a second migration file. *We cannot add these columns to the existing file.* Let's call our new file `02_add_grade_and_birthdate_to_students.rb`. It should live in `db/migrate` just like the first migration.

This new migration will look similar to the previous one. We will need a class that inherits from `ActiveRecord::Migration`, and we will need to define a change method. Inside `#change`, instead of `create_table`, we will use the `add_column` ActiveRecord method. 

Let's add a `:grade` column and a `:birthdate` column. The `:grade` column type should be `integer` and the `:birthdate` column type should be `string`.

## Changing a column

Imagine you're creating an incredible web app to send out a birthday greeting on each student's birthday. While building this, you realize you accidentally stored your birthdate data as a `string`. It would be much easier to work with if the column type was `datetime` instead. Let's fix that.

Finally, we will change a column type, `string` to `datetime`. Same as before, you'll have to *create another migration file*. This time call it `03_change_datatype_for_birthdate.rb`. 

Again, same setup as before. Be sure to use the `change_column` method. It takes three necessary arguments: `change_column(table_name, column_name, type)`.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/writing-migrations' title='Let's Write Some Migrations'>Let's Write Some Migrations</a> on Learn.co and start learning to code for free.</p>
