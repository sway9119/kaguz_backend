class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.string "name", null: false, comment: "家具名称"
      t.timestamps
    end
  end
end
