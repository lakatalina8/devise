class RenameContext < ActiveRecord::Migration
  rename_table :contents, :context_elements
  rename_column :texts, :context_element_id, :context_element_id
  rename_column :contacts, :context_element_id, :context_element_id
  rename_column :galleries, :context_element_id, :context_element_id
end
