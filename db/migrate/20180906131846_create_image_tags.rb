class CreateImageTags < ActiveRecord::Migration[5.2]
  def change
    create_table :image_tags do |t|
      t.references :image
      t.references :tag
      t.timestamps
    end
  end
end
