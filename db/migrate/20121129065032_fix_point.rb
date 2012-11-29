class FixPoint < ActiveRecord::Migration
  rename_column :tochkas_categories, :point_id, :point_id
  rename_column :contents, :point_id, :point_id
end
