class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.float :price_per_night

      t.timestamps
    end
  end
end
