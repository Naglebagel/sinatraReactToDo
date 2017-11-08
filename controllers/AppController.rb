class AppController < Sinatra::Base

	require 'bundler'
	Bundler.require

	

	set :public, File.expand_path('../public', File.dirname(__FILE__))
	set :views, File.expand_path('../views', File.dirname(__FILE__))

	not_found do
		erb :not_found
	end
end