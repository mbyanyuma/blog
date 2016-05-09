require 'page-object'
require 'watir-webdriver'
require 'cucumber'
include PageObject::PageFactory


#			 Published posts should be immediately available to readers

Given(/^I am at the blog homepage  $/) do
	visit_page(Homepage) do |page|
		page.goto 'homepage.html'
	end
end

When(/^I check the page for posts$/) do
	visit_page(Homepage) do |page|
		@post = page.published_posts?
	end
end

Then(/^I should see published post on page$/) do
 	@key = true
	expect(@post).to eq(@key)
end


#			 Posts should have a title
When(/^ I click on any post$/) do
	visit_page(Homepage) do |page|
		@post = page.published_posts
	end
end

Then(/^I should see a title of that post$/) do
 	@key = 'TITLE 2'
	expect(@post).to include(@key)
end


#			 Posts should show author name

Then(/^I should see the author name of that post$/) do
 	@key = 'By '
	expect(@post).to include(@key)
end


#			Should see posts ordered by date, most recent at the top

When(/^ I check any post$/) do
	visit_page(Homepage) do |page|
		@time = page.time_of_post?
	end
end

Then(/^I should see the time of the post$/) do
 	@key = true
	expect(@time).to include(@key)
end