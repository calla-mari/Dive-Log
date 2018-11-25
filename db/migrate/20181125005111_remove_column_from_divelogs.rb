class RemoveColumnFromDivelogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :divelogs, :date, :datetime
  end
end
