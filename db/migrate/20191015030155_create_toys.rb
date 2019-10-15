class CreateToys < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.date :date
      t.references :user, null: false, foreign_key: true
    end
  end
end
