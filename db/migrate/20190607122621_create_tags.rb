class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.belongs_to :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
