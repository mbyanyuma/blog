Feature: List of posts
		As a reader
		I want to read posts from my favourite blogger
		So that I can learn something
		
Scenario: Published posts should be immediately available to readers
		Given I am at the blog homepage 
		When I check the page for posts
		Then I should see published post on page 
		
Scenario: Posts should have a title
		Given I am at the blog homepage
		When I click on any post
		Then I should see a title of that post

Scenario: Posts should show author name
		Given I am at the blog homepage
		When I click on any post
		Then I should see the author name of that post
		
Scenario: Should see posts ordered by date, most recent at the top
		Given I am at the blog homepage 
		When I check any post
		Then I should see the time of the post