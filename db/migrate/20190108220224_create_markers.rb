class CreateMarkers < ActiveRecord::Migration[5.2]
  def change
    create_table :markers do |t|
      t.integer :coord_lat
      t.integer :coord_lng
      t.string :content
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
