

# This project isn't fully functional yet... need to finish the last 2 sections (1. add user_id to post and create two additional pages that print the last user and post that you created)

# ////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////

# - Exercise:

# - Create new app from scratch;        
# - include two models - User and Post;  
# - create 5 users and 5 posts from the terminal;  
# - print all the users on the browser;
# - create a method of creating users from the browser;  
# - print all the posts on the browser;
# - create a method of creating posts from the browser;

# - add user_id to posts table;
# - create two additional pages where you print the last user and post that you created;

require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:main.sqlite3"

get '/' do
@posts = Post.all
@users = User.all
erb :index
end

post '/new_post' do
	@title = params[:title]
	@content = params[:content]
	@category = params[:category]
Post.create(title: @title, content: @content, category: @category)

redirect '/'
end

post '/new_user' do
	@name = params[:name]
	@age = params[:age]
	@location = params[:location]
User.create(name: @name, age: @age, location: @location)

redirect '/'
end