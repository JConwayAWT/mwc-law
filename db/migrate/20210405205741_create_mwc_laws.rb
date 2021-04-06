class CreateMwcLaws < ActiveRecord::Migration[6.1]
  def change
    create_table :mwc_laws do |t|

      t.timestamps
    end
  end
end
