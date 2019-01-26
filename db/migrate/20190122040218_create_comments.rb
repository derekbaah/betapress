class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
