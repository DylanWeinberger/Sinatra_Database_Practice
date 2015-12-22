require 'sinatra'
require 'sinatra/activerecord'
require './models'

configure(:development){set :database, "sqlite3:newdb.sqlite3"}

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
	# @user = User.last
	@user_name = User.first.username
	@user_id = User.first.id
	@profile_fname = User.first.profile.fname
	@posts = User.first.posts.first
	# @posts = User.posts
	# @username = params[:username]
	# @email = params[:email]
	# @id = params[:User_id]

	erb :user
end

get "/post" do

	@post = Post.first
	@post_author = @post.user.username
	erb :post

end	
