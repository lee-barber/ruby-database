class CreatePostsTable < ActiveRecord::Migration[5.1]
	
  def change
  	create_table :posts do |x|
  		x.string :title
  		x.string :content
  		x.string :category
  	end
  end
end
