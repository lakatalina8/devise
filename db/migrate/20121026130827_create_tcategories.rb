class CreateTcategories < ActiveRecord::Migration
  def change
    create_table :tcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
