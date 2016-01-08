class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :user_id
      t.string :integer
      t.string :title
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
