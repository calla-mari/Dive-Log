class CreateDivelogs < ActiveRecord::Migration[5.2]
  def change
    create_table :divelogs do |t|
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
