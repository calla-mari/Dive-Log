class AddColumnsToDivelogs < ActiveRecord::Migration[5.2]
  def change
    add_column :divelogs, :site, :string
    add_column :divelogs, :date, :datetime
    add_column :divelogs, :time, :integer
  end
end
