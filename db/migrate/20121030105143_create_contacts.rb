class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :context_element_id
      t.text :contact_data

      t.timestamps
    end
  end
end
