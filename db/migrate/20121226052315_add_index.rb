class AddIndex < ActiveRecord::Migration
  add_index :context_elements, :point_id
  add_index :context_elements, :new_item_id
  add_index :texts, :context_element_id
  add_index :contacts, :context_element_id
end
