class CreateJoinTochkaTcategories < ActiveRecord::Migration
  def change
    create_table :join_tochka_tcategories do |t|
      t.integer :tochka_id
      t.integer :tcategory_id

      t.timestamps
    end
  end
end
