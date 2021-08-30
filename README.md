# Phase 3 Active Record Mock Code Challenge: Remodeling Practice Lab

We have three models: `House`, `Owner`, and `Project`

For our purposes, a `House` has many `Project`s, an `Owner` has many `Project`s,
and a `Project` belongs to an `Owner` and to a `House`.

`House` - `Owner` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you
start coding_. Remember to identify a single source of truth for your data.

## Topics

- Active Record Migrations
- Active Record Associations
- Class and Instance Methods
- Active Record Querying

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed
in a suggested order, but you can feel free to tackle the ones you think are
easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** 
We've provided you with a tool that you can use to test your code. To use it,
run `rake console` from the command line. This will start a `pry` session with
your classes defined. You can test out the methods that you write here. You are
also encouraged to use the `seeds.rb` file to create sample data to test your
models and associations.

Writing error-free code is more important than completing all of the
deliverables listed - prioritize writing methods that work over writing more
methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First,
prioritize getting things working. Then, if there is time at the end, refactor
your code to adhere to best practices.

**Before you submit!** Save and run your code to verify that it works as you
expect. If you have any methods that are not working yet, feel free to leave
comments describing your progress.

## What You Already Have

The starter code has migrations and models for the initial `House` and `Owner`
models, and seed data for some `House`s and `Owner`s.

You will need to create the migration for the `projects` table using the attributes specified in the deliverables below.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to
build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class
methods.

Remember: Active Record give your classes access to a lot of methods already!
Keep in mind what methods Active Record gives you access to on each of your
classes when you're approaching the deliverables below.

### Migrations

Before working on the rest of the deliverables, you will need to create a
migration for the `projects` table.

- A `Project` belongs to a `Owner`, and a `Project` also belongs to a `House`.
  In your migration, create any columns your `projects` table will need to **establish these relationships using the right foreign keys.**
- The `projects` table should also have:
  - A `price` column that stores an integer.

After creating the `projects` table using a migration, use the `seeds.rb` file to
create instances of your `Project` class so you can test your code.

**Once you've set up your `projects` table**, work on building out the following
deliverables.

### Object Association Methods

Use Active Record association macros and Active Record query methods where
appropriate (i.e. `has_many`, `has_many through`, and `belongs_to`).

#### Project

- `Project#owner`
  - returns the `Owner` instance for this Project
- `Project#house`
  - returns the `House` instance for this Project

#### House

- `House#projects`
  - returns a collection of all the projects for the House
- `House#owners`
  - returns a collection of all the owners who have projects for the House

#### Owner

- `Owner#projects`
  - returns a collection of all the projects that the Owner has done
- `Owner#houses`
  - returns a collection of all the houses that the Owner has
    projects for

Use `rake console` and check that these methods work before proceeding. For
example, you should be able to call `Owner.first.houses` and see a list of the
houses for the first owner in the database based on your seed data; and
`Project.first.owner` should return the owner for the first project in the database.

### Aggregate and Association Methods

#### House

- `House.oldest_house`
  - should return the oldest house 

- `House.get_houses_with_solar`
  - should return a collection of houses that have solar installed

- `House#install_solar`
  - if house doesn't have solar, update it's `solar` attribute. If the house already has solar, puts out "This house already has solar installed"

- `House#schedule+project(owner, price)`
  - takes an `owner` (an instance of the `Owner` class) and a price as arguments, and create a new `Project` instance associated with this house and the given owner

#### Company

- `Company#give_freebie(dev, item_name, value)`
  - takes a `dev` (an instance of the `Dev` class), an `item_name` (string), and a `value`
    as arguments, and creates a new `Freebie` instance associated with this
    company and the given dev
- `Company.oldest_company`
  - returns the `Company` instance with the earliest founding year

#### Dev

- `Dev#received_one?(item_name)`
  - accepts an `item_name` (string) and returns true if any of the freebies
    associated with the dev has that `item_name`, otherwise returns false
- `Dev#give_away(dev, freebie)`
  - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev
    to be the given dev; your code should only make the change if the freebie
    belongs to the dev who's giving it away
