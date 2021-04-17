class CreateAppartaments < ActiveRecord::Migration[6.1]
  def change
    create_table :appartaments do |t|
      t.string :name
      t.string :place
      t.string :address
      t.string :phone
      t.string :site
      t.integer :beds
      t.integer :cost

      t.timestamps
    end
  end
end
