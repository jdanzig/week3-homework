class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
   		t.string :title, :limit => 255, :null => false
   		t.text :photo_url, :null => false
   		t.integer :price, :null => false
   		t.text :description, :null => false
    end
  end
end
