class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :name
      t.text :description
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
