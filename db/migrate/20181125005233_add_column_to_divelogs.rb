class AddColumnToDivelogs < ActiveRecord::Migration[5.2]
  def change
    add_column :divelogs, :date, :date
  end
end
