class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :path, null: false
      t.string :name, null: false, default: 'untitled'
      t.references :user
      t.timestamps
    end
  end
end
