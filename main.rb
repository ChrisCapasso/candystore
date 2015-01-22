require 'sinatra'
require 'mandrill'

get '/'  do

	erb :home

end

get "/contact" do
	
	erb :contact

end

get "/about_us" do
	
	erb :about_us

end

get "/product_page" do
	
	erb :product_page

end

