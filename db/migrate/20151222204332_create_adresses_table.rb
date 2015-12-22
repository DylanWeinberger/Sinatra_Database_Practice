class CreateAdressesTable < ActiveRecord::Migration
  def change
  	  	create_table :addresses do |t|
  		t.string :street_name
  		t.integer :house_number
  		t.string :city
  		t.string :state
  		t.integer :zipcode	
	end
  end
end
