class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.text :body
      t.integer :hours_to_live

      t.timestamps
    end
  end
end
