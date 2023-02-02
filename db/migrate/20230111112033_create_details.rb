class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.float :height
      t.text :complex
      t.string :father_name
      t.string :mother_name
      t.text :address

      t.timestamps
    end
  end
end
