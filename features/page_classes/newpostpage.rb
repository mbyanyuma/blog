require 'page-object'
require 'watir-webdriver'

class Newpostpage
	include PageObject
	
	page_url 'newpost.html'
	
	text_field(:title_field, id: 'title_of_post')
	
	text_field(:author_field, id: 'author_of_post')
	
	text_area(:body_field, id: 'body')
	
	button(:post_button, id: 'post')
	
	button(:new_post_button, id: 'new-post')
	
	def create_new_post
		self.new_post_button 
	end
	
	img(:logo_icon_home_button, href: 'homepage.html')
	
	div(:title_already_exists, id:'title_error_message')
	
	form(:newpost_form, id:'post-form')
	
	
	def enter_author(keyword)
	
		self.author_field = keyword; sleep 5
	end
	
	def enter_title(keyword)
		self.title_field = keyword; sleep 5
	end
	
	def enter_title(keyword)
		self.body_field = keyword; sleep 5
		self.post_button
	end
	
end