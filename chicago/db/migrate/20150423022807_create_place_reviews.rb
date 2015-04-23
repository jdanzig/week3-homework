class CreatePlaceReviews < ActiveRecord::Migration
  def change
    create_table :place_reviews do |t|
    	t.integer :place_id, :null => false
    	t.integer :rating, :null => false
    	t.text :description, :null => false
    	t.timestamps :null => false
    end
    add_foreign_key :place_reviews, :places
  end
end
