class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
    	t.string :name
    	t.string :body

      t.timestamps
    end
  end
end
