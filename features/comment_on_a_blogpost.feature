
Feature: Comment on a post
		As an reader 
		I want to comment on a post
		So that I can let the world know I disagree with the author 
		
Scenario: Be able to add multiple comments
		Given I am at the blog postpage
		When I click on add comment button
		Then I should be able to add multiple comment
		
Scenario: See all of the comments that have already been left
		When I am at the blog postpage
		Then I should see all of the comments that have already been left

Scenario: Show the name of the comment author
		When I am at the blog postpage
		Then I should be able to see the comment author name
		
Scenario: Comments should be ordered by dates, oldest at the top
		Given I am at the blog postpage 
		When I check two comments posted by some authors
		Then The date of the later should be older than the former