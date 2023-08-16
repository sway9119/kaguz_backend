class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
      t.string "name", null: false, comment: "素材名称"
      t.string "css_class_name", comment: "CSSクラス名"
      t.timestamps
    end
  end
end
