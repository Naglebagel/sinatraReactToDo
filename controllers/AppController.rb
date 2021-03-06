class AppController < Sinatra::Base

	require 'bundler'
	Bundler.require

	register Sinatra::CrossOrigin

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'todo'
		)

	configure do
		enable :cross_origin
	end	

	set :allow_origin, :any
	set :allow_methods, [:get, :post, :options]

	set :public, File.expand_path('../public', File.dirname(__FILE__))
	set :views, File.expand_path('../views', File.dirname(__FILE__))

	not_found do
		erb :not_found
	end
end