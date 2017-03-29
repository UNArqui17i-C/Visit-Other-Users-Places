class CreateAddOtherPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :add_other_places do |t|
      t.string :id_addnew_place

      t.timestamps
    end
  end
end
