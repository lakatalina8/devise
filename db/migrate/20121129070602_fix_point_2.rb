class FixPoint2 < ActiveRecord::Migration
  drop_table :tochkas_categories
  rename_column :join_tochka_tcategories, :point_id, :point_id
end
