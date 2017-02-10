class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :notes

      t.timestamps null: false
    end
  end
end
