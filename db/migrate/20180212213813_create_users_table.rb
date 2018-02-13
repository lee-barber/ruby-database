class CreateUsersTable < ActiveRecord::Migration[5.1]
	
  def change
  	create_table :users do |y|
  		y.string :name
  		y.integer :age
  		y.string :location
  	end
  end
end
