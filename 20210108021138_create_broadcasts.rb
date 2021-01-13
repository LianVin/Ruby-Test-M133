class CreateBroadcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :broadcasts do |t|
      t.string :name
      t.integer :duration
      t.integer :chanel_id
      t.timestamps
    end
  end
end
