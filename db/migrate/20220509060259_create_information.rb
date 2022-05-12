class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string     :name,         null: false
      t.string     :sex,          null: false
      t.string     :kinds
      t.string     :color,        null: false
      t.date       :birthday,     null: false
      t.string     :pet_image_id, null: false
      t.references :user,         null: false, foreign_key:true

      t.timestamps
    end
  end
end
