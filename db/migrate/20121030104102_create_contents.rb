class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :tochka_id, :null => true
      t.integer :data_id, :null => true

      t.timestamps
    end
  end
end
