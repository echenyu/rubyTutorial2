class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :user_name
      t.text :link

      t.timestamps null: false
    end
  end
end
