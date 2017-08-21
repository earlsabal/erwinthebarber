class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
    	t.string :title
    	t.text   :body
    	t.string :icon

      t.timestamps
    end
  end
end
