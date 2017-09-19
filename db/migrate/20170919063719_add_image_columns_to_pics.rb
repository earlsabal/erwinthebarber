class AddImageColumnsToPics < ActiveRecord::Migration[5.1]
  def up
    add_attachment :pics, :image
  end

  def down
    remove_attachment :pics, :image
  end
end
