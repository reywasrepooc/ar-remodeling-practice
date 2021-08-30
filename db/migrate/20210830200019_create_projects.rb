class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.integer :owner_id
      t.integer :house_id
      t.integer :price
    end
  end
end
