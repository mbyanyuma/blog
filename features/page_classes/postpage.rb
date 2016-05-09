require 'page-object'
require 'watir-webdriver'

class Postpage
	include PageObject
	
	page_url 'postpage.html'

	div(:author_name, id:'author-name')
	
	div(:current_post, id:'current_post')
	
	div(:title_of_the_post, id:'title_of_the_post')
	
	
end