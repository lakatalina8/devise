class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :contents, :data_id, :datum_id
  end
end
