Feature: Read entire post
		As an reader 
		I want to read an entire post
		So that I can get all the details
		
Scenario: Click post title from homepage to get to entire post
		Given I am at the blog homepage 
		When I click on a published post
		Then I should see the entire post
		
Scenario: Show entire posted article
		When I am at the postpage
		Then I should be able to see the entire posted article

Scenario: Show the author's name
		When I am at the blog postpage
		Then I should be able to see the author's name
		
Scenario: Show the title
		When I am at the blog postpage 
		Then I should be able to see the title
		
Scenario: A link back to the homepage
		Given I am at blog postpage
		When I click on the logo icon
		Then I should be in the blog homepage