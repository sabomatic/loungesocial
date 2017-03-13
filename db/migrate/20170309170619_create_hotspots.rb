class CreateHotspots < ActiveRecord::Migration[5.0]
  def change
    create_table :hotspots do |t|
      t.string :train
      t.string :car
      t.string :seat
      t.string :name

      t.timestamps
    end
  end
end
