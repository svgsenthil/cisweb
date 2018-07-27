# README for cisweb

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

This application is developed based on Ruby on Rails with MySQL

Ruby 2.5.1
Rails 5.2
MySQL

# Configuration Steps

Step 1:
	$git clone <ssh_url>				#Clone the Project to local folder

Step 2:
	$bundle install 					#Install Required Gems

Step 3:
	$rails db:create					#Create Required Databases

Step 4:
	$rails db:migrate db:seed			#Migrate existing table on database and seeds table datas

Step 5:
	$sudo apt-get install imagemagick	#Install imagemagick for picture upload

Step 6:
	$rails s 							#Run the project
