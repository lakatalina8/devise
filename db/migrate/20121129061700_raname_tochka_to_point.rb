class RanameTochkaToPoint < ActiveRecord::Migration
  def change
    rename_table :points, :points
  end
end
