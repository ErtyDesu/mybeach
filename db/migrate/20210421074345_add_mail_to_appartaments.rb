class AddMailToAppartaments < ActiveRecord::Migration[6.1]
  def change
    add_column :appartaments, :mail, :string
  end
end
