# README

# Project 1 - Crispy Hamster

![Screenshot of root page](https://raw.githubusercontent.com/victorzw895/project-crispy-hamster/app/assets/images/screenshot1.jpg)



# Link - Deployed on Heroku
[Crispy Hamster]("https://project-crispy-hamster.herokuapp.com/")


# About
This website is designed to allow users to find out more about the companies that exist within a particular industry of interest.
The main page shows a listing of all companies with a brief introduction. Users will be able to browse this page and filter the page to show companies that are within the relevant industry of interest.
Companies have their profile page with more information about the company and a series of posts regarding latest products, events, articles and more.


# Current Features
* Page with list of companies
* Page with list of posts by companies - only accessible after login
* Industry search filter - remembered throughout entire website, until logged off
* Sign up form
* * Option to sign up as a user or company
* Profile page, edit, make post
* * These pages can only be used by company accounts
* Hide and show passwords
* Bonus warning button


# Challenges
1. Planning out database, tables and associations
2. Session controller, allowing user to log in/log out, remember current user
3. Have index and show views showing information from multiple tables
4. Providing an option for user to select a specific industry filter, particularly challenging due to the many to many association between User and Industry tables
5. Remembering industry filter across the entire website, saving it to the session to solve this
6. Edit form to allow user to select multiple industries.
7. Edit form to allow user to add a new industry on top of selecting current ones and also be added to industries_user join table
8. Having a form accept multiple cl_image_upload, as cloudinary is default to allowing one per view page

# Current Bugs
1. None that have been found so far

# Fixed Bugs
1. Selected Industry was saved in session, but swapping between Home page and Post page, was not updating list to filter option
2. Users able to edit profile and have an industry, not a current feature. Edit profile disabled for users currently

# TODO
* Enable users to also create and edit profile
* Enable users to follow certain companies
* The first posts in the page will display posts made by followed companies
* Improve CSS across website, specifically post show page

# Technologies
* Ruby on Rails
* Postgres
* JavaScript
* Heroku
* Gem jquery, bootstrap, pg_search, rails_12factor, rails-erd, cloudinary, bcrypt

# Thank You
Joel, Rashida and all my classmates from SEI33 for the inspiration, feedback and all the help.
