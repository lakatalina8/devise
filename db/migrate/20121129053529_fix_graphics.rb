class FixGraphics < ActiveRecord::Migration
  def change
    rename_column :graphics, :context_element_id, :gallery_id
  end
end
