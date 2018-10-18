class AddUserToDivelogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :divelogs, :user, foreign_key: true
  end
end
