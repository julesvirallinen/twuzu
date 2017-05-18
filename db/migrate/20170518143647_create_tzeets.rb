class CreateTzeets < ActiveRecord::Migration[5.0]
  def change
    create_table :tzeets do |t|
      t.string :text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
