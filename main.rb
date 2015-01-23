require 'sinatra'
require 'mandrill'


get '/'  do
	erb :home
end

get '/contact' do	
	erb :contact
end

get '/about_us' do	
	erb :about_us
end

get '/product_page' do
	erb :product_page
end

post '/contact' do

	contact_name = params["field1"]
	contact_email = params["field2"]
	email_body = "Thank you for your feedback!"

	m = Mandrill::API.new
	message = {  
	 :subject=> "Thanks for your Email",  
	 :from_name=> "It's Candy!",  
	 :text=> email_body,  
	 :to=>[  
	   {  
	     :email=> contact_email,  
	     :name=> contact_name  
	   }  
	 ],  
	 :html=>"<html><h1>Hi <strong>#{email_body}</strong>, how are you?</h1></html>",  
	 :from_email=>"web9663@yahoo.com"  
	}  
	sending = m.messages.send message  
	puts sending
	redirect to ('/')
end

