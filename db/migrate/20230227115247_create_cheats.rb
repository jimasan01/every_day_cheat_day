class CreateCheats < ActiveRecord::Migration[6.0]
  def change
    create_table :cheats do |t|
      t.string      :name,         null: false
      t.text        :image
      t.text        :explanation,  null: false
      t.integer     :volume_id,    null: false
      t.integer     :price_id,     null: false
      t.integer     :category_id,  null: false
      t.integer     :area_id,      null: false
      t.string      :city,         null: false
      t.string      :house_number, null: false
      t.string      :building
      t.timestamps
    end
  end
end
