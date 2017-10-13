class AddFieldsToHardware < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :tipo, :string
    add_column :hardwares, :poster, :string
  end
end
