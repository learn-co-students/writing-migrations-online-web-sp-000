# Let's Write Some Migrations

## Objectives

- Write your own migrations
- Run a migration to create a table
- Run a migration to add a column to a table
- Run a migration to change something in the table

## Creating a Table

The first thing we will do is create a table. In
`db/migrate/01_create_students.rb`, write the code to create a table with
Active Record. We've created a class for you called `CreateStudents`.

Define a method called `change` and use the Active Record `create_table`
method within that method to create the table. The table should have a `:name`
column with a type `string`.

After you finish defining the `change` method, run the migrations by running
`rake db:migrate` in your terminal.

## Adding a Column

The next thing we will do is add a couple of columns to the `students` table we
just created. To do this, we will create a second migration file. *We cannot add
these columns to the existing file.* Let's call our new file
`02_add_grade_and_birthdate_to_students.rb`. It should live in `db/migrate` just
like the first migration.

This new migration will look similar to the previous one. We will need a class
that inherits from `ActiveRecord::Migration`, and we will need to define a
change method. Sticking to conventions, name the class
`AddGradeAndBirthdateToStudents`, since that is what we're doing (and that is
the camel case version of the _filename_, minus the numbers in front). Inside
`#change`, instead of `create_table`, we will use the `add_column` Active Record
method.

Let's add a `:grade` column and a `:birthdate` column. The `:grade` column type
should be `integer` and the `:birthdate` column type should be `string`.

## Changing a Column

Imagine you're creating an incredible web app to send out a birthday greeting on
each student's birthday. While building this, you realize you accidentally
stored your birthdate data as a `string`. It would be much easier to work with
if the column type was `datetime` instead. Let's fix that.

Finally, we will change a column type, `string` to `datetime`. Same as before,
you'll have to *create another migration file*. This time call it
`03_change_datatype_for_birthdate.rb`. Once again, name the class the same name
as the file but with capital letters instead of underscores:
`ChangeDatatypeForBirthdate`.

This migration will have the same setup as the last. Be sure to use the
`change_column` method. It takes three necessary arguments:
`change_column(table_name, column_name, type)`.

## Active Record 5.x Migration Syntax

***NOTE***: As of Active Record 5.x, we can no longer inherit directly from
`ActiveRecord::Migration` and must instead specify which version of Active
Record / Rails the migration was written for. If we were writing a migration for
Active Record 5.1, we would inherit from `ActiveRecord::Migration[5.1]`. Don't
worry too much about this until you get to the Rails section. Until then, if you
encounter an error like this...

```text
StandardError: Directly inheriting from ActiveRecord::Migration is not supported. Please specify the Rails release the migration was written for:

  class CreateDogs < ActiveRecord::Migration[5.2]
```

...simply add `[5.2]` to the end of `ActiveRecord::Migration`, exactly as the
error message instructs.

<p class='util--hide'>View <a href='https://learn.co/lessons/writing-migrations'>Writing Our Own Migrations</a> on Learn.co and start learning to code for free.</p>
