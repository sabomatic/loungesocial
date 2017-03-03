class CreateHotspots < ActiveRecord::Migration[5.0]
  def change
    create_table :hotspots do |t|
      t.string :name
      t.string :train
      t.string :car
      t.string :seat
    end
  end
end
