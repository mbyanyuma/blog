Feature: Create a post
		As an author 
		I want to create a post
		So that I can share my knowledge with the world
		
Scenario: New post page should allow me to enter post title 
		Given I am in the homepage
		When I click on the New Post button
		Then I am at the New post page
		Then I should be able to enter a title for the post
		
Scenario: New post page should allow me to enter post body
		When I am in the New post page
		Then I should be able to enter the body of the post 

Scenario: New post should allow me to enter author name
		When I am in the New post page
		Then I should enter the author name for the post
		
Scenario: Should not be able to add duplicate titles
		Given I am in the New post page
		When I enter a title that exists
		Then I should see an error message that the title already exists
		
Scenario: Should be able to access home page from new post page
		Given I am at the New post page
		When I click on the logo icon
		Then I should be at the blog homepage