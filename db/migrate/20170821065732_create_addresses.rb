class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
    	t.string :name
    	t.string :number
    	t.string :street
    	t.string :city
    	t.string :state

      t.timestamps
    end
  end
end
