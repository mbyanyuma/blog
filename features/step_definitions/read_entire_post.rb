require 'page-object'
require 'watir-webdriver'
require 'cucumber'
include PageObject::PageFactory




#					Click post title from homepage to get to entire post

Given(/^I am at the blog homepage$/) do
	visit_page(Homepage) do |page|
		page.goto 'homepage.html'
	end
end

When(/^I click on a published post$/) do
	visit_page(Homepage) do |page|
		page.published_post_button sleep 7
		@entire_post = page.published_posts?
	end
end

Then(/^I should see the entire post$/) do
 	@key = true
	expect(@entire_post).to eq(@key)
end


#						Show entire posted article

When(/^I am at the postpage$/) do
	visit_page(Postpage) do |page|
		@author = page.author_name?
		@post_on_the_page = page.current_post?
		@post_title = page.title_of_the_post?
	end
end

Then(/^ I should be able to see the author's name$/) do
 	@key = true
	expect(@post_on_the_page).to eq(@key)
end


#					 Show the author's name

Then(/^ I should be able to see the author's name$/) do
 	@key = true
	expect(@author).to eq(@key)
end


#					Show the title

Then(/^ I should be able to see the title$/) do
 	@key = true
	expect(@post_title).to eq(@key)
end


#				 A link back to the homepage

When(/^I click on the logo icon$/) do
  pending # to be implemented later -- the icon will take the user to homepage
end

Then(/^I should be in the blog homepage$/) do
  pending # Write code here that turns the phrase above into concrete actions
end