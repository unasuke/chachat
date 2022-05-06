class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :uid, null: false, index: true
      t.string :nickname, null: false
      t.string :image_url, null: false
      t.timestamps
    end
  end
end
