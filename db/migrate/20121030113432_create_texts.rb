class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :content_id
      t.text :text_data

      t.timestamps
    end
  end
end
