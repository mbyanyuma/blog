require 'page-object'
require 'watir-webdriver'

class Homepage
	include PageObject
	
	page_url 'homepage.html'
	
	div(:published_posts, id: 'published_posts')
	
	button(:published_post_button, id: 'available_post')
	
	span(:time_of_post, name: 'time')

	
end