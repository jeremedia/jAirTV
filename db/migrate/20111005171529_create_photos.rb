class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :owner_id
      t.string :flickr_id
      t.string :owner
      t.string :secret
      t.string :server
      t.string :farm
      t.string :title
      t.boolean :ispublic
      t.boolean :isfriend
      t.boolean :isfamily
      t.string :url_sq
      t.integer :height_sq
      t.integer :width_sq
      t.string :url_t
      t.integer :height_t
      t.integer :width_t
      t.string :url_s
      t.integer :height_s
      t.integer :width_s
      t.string :url_m
      t.integer :height_m
      t.integer :width_m
      t.string :url_z
      t.integer :height_z
      t.integer :width_z
      t.string :url_l
      t.integer :height_l
      t.integer :width_l
      t.string :url_o
      t.integer :height_o
      t.integer :width_o

      t.timestamps
    end
  end
end
