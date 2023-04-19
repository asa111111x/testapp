# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

    This application was built using Ruby version 3.0.0p0

* System dependencies: 

    PostgreSQL and Node.js

* Configuration

    1. Clone this repository to your local machine.
    2. Navigate to the project directory.
    3. Run bundle install to install the required gems.
    4. Run rails db:create to create the database.
    5. Run rails db:migrate to run database migrations.

* Database creation

    sudo -u postgres psql
    CREATE DATABAS test20230416;
    CREATE USER tony WITH PASSWORD 'tony20230416';
    GRANT ALL PRIVILEGES ON DATABASE test20230416 TO tony;
    ALTER ROLE tony SUPERUSER CREATEDB;

* Database initialization

    1. Run rails db:seed.

* How to run the test suite

    To run the test suite, run rspec.

* Services (job queues, cache servers, search engines, etc.)

    This application updates the scores once per minute using the gem whenever.
    You can view the file config/schedule.rb to schedule tasks.


