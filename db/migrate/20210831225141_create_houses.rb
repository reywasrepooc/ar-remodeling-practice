class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.integer :year_built
      t.string :address
      t.string :state
      t.boolean :solar
    end
  end
end
