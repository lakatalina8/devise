class RenameTcategory < ActiveRecord::Migration
  rename_table :tcategories, :point_categories
  rename_table :join_tochka_tcategories, :join_point_categories
  rename_column :join_point_categories, :tcategory_id, :point_category_id
end
