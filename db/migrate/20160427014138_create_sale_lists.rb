class CreateSaleLists < ActiveRecord::Migration
  def change
    create_table :sale_lists do |t|
      t.text :mwc_html
      t.string :mwc_file_name, null: false

      t.timestamps
    end
  end
end
