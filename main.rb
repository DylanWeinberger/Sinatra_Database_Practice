require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:newdb.sqlite3"

get "/" do
	# "Hello World"
	# User.new
	# make a user.create method to create a new user everytime someone loads this page.

	User.create(username: "Lando", email: "smooth_smuggler@bespin.gov")
	params.inspect
	@users = User.all
	@username = params[:username]
	@email = params[:email]
	@id = params[:User_id]
	erb :home
end



get "/user" do

	params.inspect
	@user = User.last
	@user_name = User.last.username
	@user_id = User.last.id
	@profile_fname = User.last.profile.fname
	# @username = params[:username]
	# @email = params[:email]
	# @id = params[:User_id]

	erb :user
end
