class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :mod
      t.string :language
      t.string :eye_color
      t.integer :height
      t.string :hobby

      t.timestamps
    end
  end
end
