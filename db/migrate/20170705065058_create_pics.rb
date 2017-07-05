class CreatePics < ActiveRecord::Migration[5.1]
  def change
    create_table :pics do |t|
      t.string :url
      t.string :title
      t.text :body
      t.references :haircut

      t.timestamps
    end
  end
end
