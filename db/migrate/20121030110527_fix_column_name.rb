class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :context_elements, :data_id, :datum_id
  end
end
