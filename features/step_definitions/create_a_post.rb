require 'page-object'
require 'watir-webdriver'
require 'cucumber'
include PageObject::PageFactory



#			 New post page should allow me to enter post title

Given(/^I am in the homepage $/) do
	visit_page(Homepage) do |page|
		page.goto 'homepage.html'
	end
end

When(/^I click on the New Post button$/) do
	visit_page(Homepage) do |page|
		page.create_new_post
	end
end

Then(/^I am at the New post page$/) do
   pending #to be completed
end

Then(/^I should be able to enter a title for the post$/) do
	@key = 'Title 13'
	expect(@title).to eq(@key)
end


#			New post page should allow me to enter post body

When(/^I am in the New post page$/) do
  	visit_page(Newpostpage) do |page|
		page.enter_body 'Test some body of strings'
		@body = page.enter_body
		@author = page.author_field?
	end
end

Then(/^ I should be able to enter the body of the post $/) do
	@key = 'Test some body of string'
	expect(@body).to eq(@key)
end


#			New post should allow me to enter author name

Then(/^I should enter the author name for the post$/) do
  	@key = true
	expect(@author).to eq(@key)
end


#			 Should not be able to add duplicate titles

When(/^I enter a title that exists$/) do
  	on_page(Newpostpage) do |page|
		page.enter_title 'Title 1'
		@Error_message_for_title_already_exist = page.title_already_exists?
	end
end

Then(/^I should see an error message that the title already exists$/) do
  	@key = true
	expect(@Error_message_for_title_already_exist).to eq(@key)
end


#		Should be able to access home page from new post page

When(/^ I click on the logo icon$/) do
  	on_page(Newpostpage) do |page|
		page.logo_icon_home_button
		@link_in_image_icon = page.logo_icon_home_button_element?
	end
end

Then(/^I should be at the blog homepage$/) do
  	@key = 'img'
	expect(@link_in_image_icon).to eq(@key)
end