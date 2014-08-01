# AdvancedSummer2014

Repository for the Advanced Section of the Ruby on Rails Cert Summer 2014 Online Class
***
## Week 1
   * Intro
   * Rails Blog
   * Solitaire Cipher

## Week 2
   * Lightning Talk app (Topics Business Logic)
   * Login with Github using Devise and OmniAuth
   * Push to Heroku
   * POODr for Solitare Cypher

## Week 3
   * Authorization - CanCanCan / Rolify
   * Lightning app Admin business logic
   * Solitare Cypher - How can POODr help us with this?

## Week 4
   * Rails: I18n
   * Ruby: JRuby
   * Duck Typing

## Week 5
   * JRuby on Rails
   * RuboCop
   * Simple Cov
   * Upgrading from Rspec 2 to 3

## Week 6
   * AJAX
   * Pagination/Sorting

***

## Final Certificate Required Project

### Build a Rails application for managing library books:
	1.	Anyone can see all the book titles and ratings in the library
	2.	You must login to add library books
	3.	Admin must approve the addition of lib books
	4.	You must be logged in to rate a book
	5.	To rate a book you must click on stars
	6.	You can give a book 1-5 stars
	7.	You can add a review to any book
	8.	You can only edit/destroy books you entered into the system
	9.	If a book has ratings or reviews, you can not destroy it, only deactivate it
	10.	Deactivated books can not get new reviews or ratings
	11.	Users can receive emails when their books get rated or reviewed
	12.	Users can "follow" books - which means they get email notifications on ratings and reviews
	13.	Users can opt out of all or by book rating emails 
	14.	Users can opt out of all or by book review emails
	15.	Users can configure their email preferences
	16.	Users can ask to receive a daily digest of email notifications instead of individual notifications
	17.	Books must have a picture associated with them to be approved
	18.	Admins can block users from creating ratings or reviews in the system
	19.	Books should be searchable by title, author, ISBN, tags, ratings, and reviews 
	20.	Admins can see a report of activities by User: Most active* users, Users who give the lowest ratings, Users who give the highest ratings, Users who login most often, Users with the most reviews, and Users who enter the most books.
	21.	Book and review listings are sortable, and paginated (default sort for Books and Reviews is rating)
	22.	Admins can create/invite other admins
	23.	Users can invite other users
	24.	Admins can login as any other user in the system
	25.	When an Admin logs in as another user, the Admin's activities do not impact the User's activity ratings in the system

*Active is the combined score of number of logins, number of ratings, number of owned books, number of reviews.

## Requirements for Passing:
	1.	80% of the above items implemented (20/25)
	2.	Code Climate grades = your grade on the project (need a 3.0 or better to pass)
	3.	100% code test coverage via Simple Cov 
	4.	Github repo linked to Pivotal Tracker
	5.	Pivotal Tracker project to track requirements, and development tasks from above list and any additional things you realize you need to do (each commit message must be linked to a PT ticket)
	6.	ReadMe with setup instructions for your app and CodeClimate Badge
	7.	Should not be ugly (twitter-bootsrapt, Zurb foundation, or your own styles applied is fine, but something nicer than default rails stuff.)
## Nice to Haves:
* Deployed to Heroku
* Tests running on Travis (with ReadMe badge)
* Travis linked to Code Climate for test coverage (if your app uses more than 1 test framework, like rspec and cucumber, I will take the Simple Cov coverage number instead of Code Climate coverage number)  (with ReadMe badge from Code Climate)
* RuboCop runs as part of your test suite
