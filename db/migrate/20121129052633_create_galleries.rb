class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :context_element_id

      t.timestamps
    end
  end
end
