class RenameNews < ActiveRecord::Migration
  rename_table :data, :new_items
  rename_table :categories, :new_categories
  rename_column :new_items, :category_id, :new_category_id
  rename_column :contents, :datum_id, :new_item_id
end
