class CreateTochkas < ActiveRecord::Migration
  def change
    create_table :tochkas do |t|
      t.string :name

      t.timestamps
    end
  end
end
